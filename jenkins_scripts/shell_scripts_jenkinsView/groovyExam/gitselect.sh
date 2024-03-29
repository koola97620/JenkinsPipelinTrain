# 권한필요

@NonCPS
def getGitInfo(String jobName) {
  def map1 = jenkins.model.Jenkins.instance.getItemMap()

  def project
  if(jobName.contains('/') == true) {           // folder를 사용하는 경우
    def tmp = jobName.split('/')
    project = map1.get(tmp[0]).getJob(tmp[1])
  }else {
    project = map1.get(jobName)
  }

  def giturl = project.scm.getUserRemoteConfigs()[0].getUrl().toString()
  def credential = project.scm.getUserRemoteConfigs()[0].getCredentialsId().toString()
  println giturl
  println credential

  return [giturl, credential]
}