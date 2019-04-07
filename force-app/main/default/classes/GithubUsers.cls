public with sharing class GithubUsers {
  public List<GithubUser__c> records;

  public GithubUsers(List<GithubUser__c> githubUsers) {
    records = githubUsers;
  }

  public void UpsertRecords(){
    upsert records;
  }
}
