@IsTest
public with sharing class GithubUsersTest {

  @IsTest
  public static void whenGithubUsersGivenThenUpsertThem(){
    GithubUser__c githubUser = new GithubUser__c(Name = 'testUser');

    Test.startTest();
    GithubUsers githubUsers = new GithubUsers(new List<GithubUser__c>{ githubUser });
    githubUsers.upsertRecords();
    Test.stopTest();

    List<GithubUser__c> allGithubUsers = [SELECT Id FROM GithubUser__c];
    System.assertEquals(1, allGithubUsers.size(), 'expect 1 new user inserted.');
  }
}
