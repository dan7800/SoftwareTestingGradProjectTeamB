.class public final Lcom/android/email/provider/h;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 839
    const/4 v0, 0x0

    const/16 v1, 0x7f

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 840
    iput-object p1, p0, Lcom/android/email/provider/h;->mContext:Landroid/content/Context;

    .line 841
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 845
    const-string v0, "EmailProvider"

    const-string v1, "Creating EmailProvider database"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 847
    iget-object v0, p0, Lcom/android/email/provider/h;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/email/provider/f;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 848
    invoke-static {p1}, Lcom/android/email/provider/f;->k(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 849
    invoke-static {p1}, Lcom/android/email/provider/f;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 850
    invoke-static {p1}, Lcom/android/email/provider/f;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 851
    invoke-static {p1}, Lcom/android/email/provider/f;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 852
    invoke-static {p1}, Lcom/android/email/provider/f;->u(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 853
    invoke-static {p1}, Lcom/android/email/provider/f;->v(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 854
    invoke-static {p1}, Lcom/android/email/provider/f;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 855
    invoke-static {p1}, Lcom/android/email/provider/f;->m(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 856
    invoke-static {p1}, Lcom/android/email/provider/f;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 857
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 861
    const/16 v0, 0x65

    if-ne p2, v0, :cond_0

    const/16 v0, 0x64

    if-ne p3, v0, :cond_0

    .line 862
    const-string v0, "EmailProvider"

    const-string v1, "Downgrade from v101 to v100"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 866
    :goto_0
    return-void

    .line 864
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 1478
    :try_start_0
    const-string v0, "DELETE FROM Account WHERE displayName ISNULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1480
    const-string v0, "DELETE FROM HostAuth WHERE protocol ISNULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1486
    :goto_0
    return-void

    .line 1482
    :catch_0
    move-exception v0

    .line 1484
    const-string v1, "EmailProvider"

    const-string v2, "Exception cleaning EmailProvider.db"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7

    .prologue
    const/16 v1, 0x16

    const/4 v0, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 873
    if-ge p2, v0, :cond_2

    .line 874
    iget-object v0, p0, Lcom/android/email/provider/h;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 876
    array-length v3, v1

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v2, v1, v0

    .line 877
    iget-object v4, p0, Lcom/android/email/provider/h;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4, v2, v5, v5}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 876
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/android/email/provider/h;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/email/provider/f;->c(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 880
    invoke-static {p1}, Lcom/android/email/provider/f;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 881
    invoke-static {p1}, Lcom/android/email/provider/f;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 882
    invoke-static {p1}, Lcom/android/email/provider/f;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 883
    invoke-static {p1}, Lcom/android/email/provider/f;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1472
    :cond_1
    :goto_1
    return-void

    .line 886
    :cond_2
    if-ne p2, v0, :cond_3

    .line 889
    :try_start_0
    const-string v0, "alter table Message add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 891
    const-string v0, "alter table Message_Updates add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 893
    const-string v0, "alter table Message_Deletes add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :cond_3
    :goto_2
    const/4 v0, 0x6

    if-gt p2, v0, :cond_4

    .line 903
    const-string v0, "drop trigger mailbox_delete;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 904
    const-string v0, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 906
    :cond_4
    const/4 v0, 0x7

    if-gt p2, v0, :cond_5

    .line 909
    :try_start_1
    const-string v0, "alter table Account add column securityFlags integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 916
    :cond_5
    :goto_3
    const/16 v0, 0x8

    if-gt p2, v0, :cond_6

    .line 919
    :try_start_2
    const-string v0, "alter table Account add column securitySyncKey text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 921
    const-string v0, "alter table Account add column signature text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 928
    :cond_6
    :goto_4
    const/16 v0, 0x9

    if-gt p2, v0, :cond_7

    .line 931
    :try_start_3
    const-string v0, "alter table Message add column meetingInfo text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 933
    const-string v0, "alter table Message_Updates add column meetingInfo text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 935
    const-string v0, "alter table Message_Deletes add column meetingInfo text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 942
    :cond_7
    :goto_5
    const/16 v0, 0xa

    if-gt p2, v0, :cond_8

    .line 945
    :try_start_4
    const-string v0, "alter table Attachment add column content text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 947
    const-string v0, "alter table Attachment add column flags integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 954
    :cond_8
    :goto_6
    const/16 v0, 0xb

    if-gt p2, v0, :cond_9

    .line 957
    :try_start_5
    const-string v0, "alter table Attachment add column content_bytes blob;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    .line 964
    :cond_9
    :goto_7
    const/16 v0, 0xc

    if-gt p2, v0, :cond_a

    .line 966
    :try_start_6
    const-string v0, "alter table Mailbox add column messageCount integer not null default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 969
    invoke-static {p1}, Lcom/android/email/provider/f;->o(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    .line 975
    :cond_a
    :goto_8
    const/16 v0, 0xd

    if-gt p2, v0, :cond_b

    .line 977
    :try_start_7
    const-string v0, "alter table Message add column snippet text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_7

    .line 985
    :cond_b
    :goto_9
    const/16 v0, 0xe

    if-gt p2, v0, :cond_c

    .line 987
    :try_start_8
    const-string v0, "alter table Message_Deletes add column snippet text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 989
    const-string v0, "alter table Message_Updates add column snippet text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_8

    .line 996
    :cond_c
    :goto_a
    const/16 v0, 0xf

    if-gt p2, v0, :cond_d

    .line 998
    :try_start_9
    const-string v0, "alter table Attachment add column accountKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1001
    const-string v0, "update Attachment set accountKey= (SELECT Message.accountKey from Message where Message._id = Attachment.messageKey)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1011
    :cond_d
    :goto_b
    const/16 v0, 0x10

    if-gt p2, v0, :cond_e

    .line 1013
    :try_start_a
    const-string v0, "alter table Mailbox add column parentKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_a

    .line 1020
    :cond_e
    :goto_c
    const/16 v0, 0x11

    if-gt p2, v0, :cond_f

    .line 1021
    invoke-static {p1}, Lcom/android/email/provider/f;->q(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1023
    :cond_f
    const/16 v0, 0x12

    if-gt p2, v0, :cond_10

    .line 1025
    :try_start_b
    const-string v0, "alter table Account add column policyKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1027
    const-string v0, "drop trigger account_delete;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1028
    const-string v0, "create trigger account_delete before delete on Account begin delete from Mailbox where accountKey=old._id; delete from HostAuth where _id=old.hostAuthKeyRecv; delete from HostAuth where _id=old.hostAuthKeySend; delete from Policy where _id=old.policyKey; end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1029
    invoke-static {p1}, Lcom/android/email/provider/f;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1030
    invoke-static {p1}, Lcom/android/email/provider/f;->p(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_b

    .line 1036
    :cond_10
    :goto_d
    const/16 v0, 0x13

    if-gt p2, v0, :cond_11

    .line 1038
    :try_start_c
    const-string v0, "alter table Policy add column requireManualSyncRoaming integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1041
    const-string v0, "alter table Policy add column dontAllowCamera integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1043
    const-string v0, "alter table Policy add column dontAllowAttachments integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1045
    const-string v0, "alter table Policy add column dontAllowHtml integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1047
    const-string v0, "alter table Policy add column maxAttachmentSize integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1049
    const-string v0, "alter table Policy add column maxTextTruncationSize integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1052
    const-string v0, "alter table Policy add column maxHTMLTruncationSize integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1055
    const-string v0, "alter table Policy add column maxEmailLookback integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1057
    const-string v0, "alter table Policy add column maxCalendarLookback integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1059
    const-string v0, "alter table Policy add column passwordRecoveryEnabled integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_c

    .line 1067
    :cond_11
    :goto_e
    const/16 v0, 0x15

    if-gt p2, v0, :cond_12

    .line 1068
    iget-object v0, p0, Lcom/android/email/provider/h;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/email/provider/f;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    move p2, v1

    .line 1071
    :cond_12
    if-gt p2, v1, :cond_13

    .line 1072
    invoke-static {p1}, Lcom/android/email/provider/f;->w(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1074
    :cond_13
    const/16 v0, 0x17

    if-gt p2, v0, :cond_14

    .line 1075
    invoke-static {p1}, Lcom/android/email/provider/f;->x(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1077
    :cond_14
    const/16 v0, 0x18

    if-gt p2, v0, :cond_15

    .line 1078
    invoke-static {p1}, Lcom/android/email/provider/f;->y(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1080
    :cond_15
    const/16 v0, 0x19

    if-gt p2, v0, :cond_16

    .line 1081
    invoke-static {p1}, Lcom/android/email/provider/f;->z(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1083
    :cond_16
    const/16 v0, 0x1a

    if-gt p2, v0, :cond_17

    .line 1085
    :try_start_d
    const-string v0, "alter table Message add column protocolSearchInfo text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1087
    const-string v0, "alter table Message_Deletes add column protocolSearchInfo text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1089
    const-string v0, "alter table Message_Updates add column protocolSearchInfo text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_d

    .line 1096
    :cond_17
    :goto_f
    const/16 v0, 0x1c

    if-gt p2, v0, :cond_18

    .line 1098
    :try_start_e
    const-string v0, "alter table Policy add column protocolPoliciesEnforced text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1100
    const-string v0, "alter table Policy add column protocolPoliciesUnsupported text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_e} :catch_e

    .line 1107
    :cond_18
    :goto_10
    const/16 v0, 0x1d

    if-gt p2, v0, :cond_19

    .line 1108
    invoke-static {p1}, Lcom/android/email/provider/f;->A(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1110
    :cond_19
    const/16 v0, 0x1e

    if-gt p2, v0, :cond_1a

    .line 1112
    :try_start_f
    const-string v0, "alter table Mailbox add column uiSyncStatus integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1114
    const-string v0, "alter table Mailbox add column uiLastSyncResult integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_f} :catch_f

    .line 1121
    :cond_1a
    :goto_11
    const/16 v0, 0x1f

    if-gt p2, v0, :cond_1b

    .line 1123
    :try_start_10
    const-string v0, "alter table Mailbox add column lastNotifiedMessageKey integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1125
    const-string v0, "alter table Mailbox add column lastNotifiedMessageCount integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1127
    const-string v0, "update Mailbox set lastNotifiedMessageKey=0 where lastNotifiedMessageKey IS NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1129
    const-string v0, "update Mailbox set lastNotifiedMessageCount=0 where lastNotifiedMessageCount IS NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/database/SQLException; {:try_start_10 .. :try_end_10} :catch_10

    .line 1136
    :cond_1b
    :goto_12
    const/16 v0, 0x20

    if-gt p2, v0, :cond_1c

    .line 1138
    :try_start_11
    const-string v0, "alter table Attachment add column uiState integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1140
    const-string v0, "alter table Attachment add column uiDestination integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1142
    const-string v0, "alter table Attachment add column uiDownloadedSize integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1146
    const-string v0, "update Attachment set uiState=3 where contentUri is not null;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/database/SQLException; {:try_start_11 .. :try_end_11} :catch_11

    .line 1154
    :cond_1c
    :goto_13
    const/16 v0, 0x21

    if-gt p2, v0, :cond_1d

    .line 1156
    :try_start_12
    const-string v0, "alter table Mailbox add column totalCount integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/database/SQLException; {:try_start_12 .. :try_end_12} :catch_12

    .line 1163
    :cond_1d
    :goto_14
    const/16 v0, 0x22

    if-gt p2, v0, :cond_1e

    .line 1165
    :try_start_13
    const-string v0, "update Mailbox set lastTouchedTime = 2 WHERE type = 3"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1169
    const-string v0, "update Mailbox set lastTouchedTime = 1 WHERE type = 5"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/SQLException; {:try_start_13 .. :try_end_13} :catch_13

    .line 1178
    :cond_1e
    :goto_15
    const/16 v0, 0x24

    if-gt p2, v0, :cond_1f

    .line 1181
    :try_start_14
    const-string v0, "update Mailbox set flags=flags|64 where (flags&8)!=0 and accountKey IN (SELECT Account._id from Account,HostAuth where Account.hostAuthKeyRecv=HostAuth._id and protocol=\'eas\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/SQLException; {:try_start_14 .. :try_end_14} :catch_14

    .line 1196
    :cond_1f
    :goto_16
    const/16 v0, 0x25

    if-gt p2, v0, :cond_20

    .line 1198
    :try_start_15
    const-string v0, "alter table Message add column threadTopic text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_15} :catch_15

    .line 1205
    :cond_20
    :goto_17
    const/16 v0, 0x26

    if-gt p2, v0, :cond_21

    .line 1207
    :try_start_16
    const-string v0, "alter table Message_Deletes add column threadTopic text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1209
    const-string v0, "alter table Message_Updates add column threadTopic text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/SQLException; {:try_start_16 .. :try_end_16} :catch_16

    .line 1216
    :cond_21
    :goto_18
    const/16 v0, 0x27

    if-gt p2, v0, :cond_22

    .line 1217
    invoke-static {p1}, Lcom/android/email/provider/f;->B(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1219
    :cond_22
    const/16 v0, 0x66

    if-gt p2, v0, :cond_23

    .line 1221
    :try_start_17
    const-string v0, "alter table Mailbox add hierarchicalName text"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/database/SQLException; {:try_start_17 .. :try_end_17} :catch_17

    .line 1228
    :cond_23
    :goto_19
    const/16 v0, 0x67

    if-gt p2, v0, :cond_24

    .line 1230
    :try_start_18
    const-string v0, "alter table Message add syncData text"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/database/SQLException; {:try_start_18 .. :try_end_18} :catch_18

    .line 1237
    :cond_24
    :goto_1a
    const/16 v0, 0x68

    if-gt p2, v0, :cond_25

    .line 1239
    :try_start_19
    const-string v0, "alter table Message_Updates add syncData text"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1241
    const-string v0, "alter table Message_Deletes add syncData text"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/database/SQLException; {:try_start_19 .. :try_end_19} :catch_19

    .line 1248
    :cond_25
    :goto_1b
    const/16 v0, 0x69

    if-gt p2, v0, :cond_26

    .line 1250
    :try_start_1a
    const-string v0, "alter table HostAuth add serverCert blob"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/database/SQLException; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 1257
    :cond_26
    :goto_1c
    const/16 v0, 0x6a

    if-gt p2, v0, :cond_27

    .line 1259
    :try_start_1b
    const-string v0, "alter table Message add flagSeen integer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1261
    const-string v0, "alter table Message_Updates add flagSeen integer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1263
    const-string v0, "alter table Message_Deletes add flagSeen integer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/database/SQLException; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 1270
    :cond_27
    :goto_1d
    const/16 v0, 0x6b

    if-gt p2, v0, :cond_28

    .line 1272
    :try_start_1c
    const-string v0, "alter table Attachment add column cachedFile text;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/database/SQLException; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 1279
    :cond_28
    :goto_1e
    const/16 v0, 0x6c

    if-gt p2, v0, :cond_29

    .line 1281
    iget-object v0, p0, Lcom/android/email/provider/h;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/email/provider/f;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 1283
    :cond_29
    const/16 v0, 0x6d

    if-gt p2, v0, :cond_2a

    .line 1285
    const-string v0, "update Mailbox set syncInterval=-2 where syncInterval<-2"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1290
    const-string v0, "update Account set syncLookback=3 where syncLookback is null or syncLookback<1 or syncLookback>6"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1296
    const-string v0, "update Mailbox set syncLookback=0 where syncLookback is null or syncLookback<1 or syncLookback>6"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1302
    :cond_2a
    const/16 v0, 0x6e

    if-gt p2, v0, :cond_2b

    .line 1304
    const-string v0, "delete from Mailbox where type=68"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1307
    :cond_2b
    const/16 v0, 0x6f

    if-gt p2, v0, :cond_2c

    .line 1311
    const-string v0, "update Mailbox set syncInterval=case when syncInterval=-1 then 0 else 1 end"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1315
    :cond_2c
    const/16 v0, 0x6e

    if-lt p2, v0, :cond_2d

    const/16 v0, 0x70

    if-gt p2, v0, :cond_2d

    .line 1320
    invoke-static {p1}, Lcom/android/email/provider/f;->o(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1321
    invoke-static {p1}, Lcom/android/email/provider/f;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1324
    :cond_2d
    const/16 v0, 0x71

    if-gt p2, v0, :cond_2e

    .line 1326
    :try_start_1d
    const-string v0, "alter table Mailbox add column lastFullSyncTime integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1328
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1329
    const-string v1, "lastFullSyncTime"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1330
    const-string v1, "Mailbox"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/database/SQLException; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 1337
    :cond_2e
    :goto_1f
    const/16 v0, 0x72

    if-gt p2, v0, :cond_2f

    .line 1339
    :try_start_1e
    const-string v0, "alter table Account add column pingDuration integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1341
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1342
    const-string v1, "pingDuration"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1343
    const-string v1, "Account"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/database/SQLException; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 1350
    :cond_2f
    :goto_20
    const/16 v0, 0x73

    if-gt p2, v0, :cond_30

    .line 1351
    invoke-static {p1}, Lcom/android/email/provider/f;->u(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1352
    invoke-static {p1}, Lcom/android/email/provider/f;->v(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1366
    :cond_30
    const/16 v0, 0x75

    if-gt p2, v0, :cond_31

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update Mailbox set syncInterval=0 where accountKey in (select Account._id from Account join HostAuth where HostAuth._id=Account.hostAuthKeyRecv and (HostAuth.protocol=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/email/provider/h;->mContext:Landroid/content/Context;

    const v3, 0x7f0902e5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' or HostAuth.protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/provider/h;->mContext:Landroid/content/Context;

    const v3, 0x7f0902e6

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' or HostAuth.protocol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'imap\'));"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1392
    :cond_31
    const/16 v0, 0x76

    if-gt p2, v0, :cond_32

    .line 1393
    const-string v0, "update Mailbox set syncInterval=0 where type=3"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1396
    const-string v0, "delete from Message where (syncServerId not null and syncServerId!=\'\') and mailboxKey in (select _id from Mailbox where type=3)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1410
    :cond_32
    const/16 v0, 0x78

    if-gt p2, v0, :cond_33

    .line 1411
    const-string v0, "alter table Message add mainMailboxKey integer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1418
    const-string v0, "delete from Mailbox where type=8"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1422
    :cond_33
    const/16 v0, 0x79

    if-gt p2, v0, :cond_34

    .line 1425
    const-string v0, "alter table Message_Updates add mainMailboxKey integer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1427
    const-string v0, "alter table Message_Deletes add mainMailboxKey integer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1431
    :cond_34
    const/16 v0, 0x7a

    if-gt p2, v0, :cond_36

    .line 1432
    const/16 v0, 0x75

    if-lt p2, v0, :cond_35

    .line 1438
    invoke-static {p1}, Lcom/android/email/provider/f;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1440
    :cond_35
    iget-object v0, p0, Lcom/android/email/provider/h;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/email/provider/f;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1443
    :cond_36
    const/16 v0, 0x7b

    if-gt p2, v0, :cond_37

    .line 1445
    :try_start_1f
    const-string v0, "alter table Account add column maxAttachmentSize integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1447
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1448
    const-string v1, "maxAttachmentSize"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1449
    const-string v1, "Account"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1f
    .catch Landroid/database/SQLException; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 1456
    :cond_37
    :goto_21
    const/16 v0, 0x7c

    if-gt p2, v0, :cond_38

    .line 1457
    invoke-static {p1}, Lcom/android/email/provider/f;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1459
    const-string v0, "alter table HostAuth add credentialKey integer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1461
    const-string v0, "update HostAuth set credentialKey=-1"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1465
    :cond_38
    const/16 v0, 0x7d

    if-gt p2, v0, :cond_39

    .line 1466
    invoke-static {p1}, Lcom/android/email/provider/f;->C(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1469
    :cond_39
    const/16 v0, 0x7e

    if-gt p2, v0, :cond_1

    .line 1470
    iget-object v0, p0, Lcom/android/email/provider/h;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/email/provider/f;->e(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_1

    .line 895
    :catch_0
    move-exception v0

    .line 897
    const-string v3, "EmailProvider"

    const-string v4, "Exception upgrading EmailProvider.db from v5 to v6"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 911
    :catch_1
    move-exception v0

    .line 913
    const-string v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception upgrading EmailProvider.db from 7 to 8 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_3

    .line 923
    :catch_2
    move-exception v0

    .line 925
    const-string v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception upgrading EmailProvider.db from 8 to 9 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_4

    .line 937
    :catch_3
    move-exception v0

    .line 939
    const-string v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception upgrading EmailProvider.db from 9 to 10 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_5

    .line 949
    :catch_4
    move-exception v0

    .line 951
    const-string v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception upgrading EmailProvider.db from 10 to 11 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_6

    .line 959
    :catch_5
    move-exception v0

    .line 961
    const-string v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception upgrading EmailProvider.db from 11 to 12 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_7

    .line 970
    :catch_6
    move-exception v0

    .line 972
    const-string v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception upgrading EmailProvider.db from 12 to 13 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_8

    .line 980
    :catch_7
    move-exception v0

    .line 982
    const-string v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception upgrading EmailProvider.db from 13 to 14 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_9

    .line 991
    :catch_8
    move-exception v0

    .line 993
    const-string v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception upgrading EmailProvider.db from 14 to 15 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_a

    .line 1006
    :catch_9
    move-exception v0

    .line 1008
    const-string v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception upgrading EmailProvider.db from 15 to 16 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_b

    .line 1015
    :catch_a
    move-exception v0

    .line 1017
    const-string v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception upgrading EmailProvider.db from 16 to 17 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_c

    .line 1031
    :catch_b
    move-exception v0

    .line 1033
    const-string v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception upgrading EmailProvider.db from 18 to 19 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_d

    .line 1062
    :catch_c
    move-exception v0

    .line 1064
    const-string v3, "EmailProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception upgrading EmailProvider.db from 19 to 20 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_e

    .line 1091
    :catch_d
    move-exception v0

    .line 1093
    const-string v1, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception upgrading EmailProvider.db from 26 to 27 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_f

    .line 1102
    :catch_e
    move-exception v0

    .line 1104
    const-string v1, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception upgrading EmailProvider.db from 28 to 29 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_10

    .line 1116
    :catch_f
    move-exception v0

    .line 1118
    const-string v1, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception upgrading EmailProvider.db from 30 to 31 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_11

    .line 1131
    :catch_10
    move-exception v0

    .line 1133
    const-string v1, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception upgrading EmailProvider.db from 31 to 32 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_12

    .line 1149
    :catch_11
    move-exception v0

    .line 1151
    const-string v1, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception upgrading EmailProvider.db from 32 to 33 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_13

    .line 1158
    :catch_12
    move-exception v0

    .line 1160
    const-string v1, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception upgrading EmailProvider.db from 33 to 34 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_14

    .line 1173
    :catch_13
    move-exception v0

    .line 1175
    const-string v1, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception upgrading EmailProvider.db from 34 to 35 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_15

    .line 1191
    :catch_14
    move-exception v0

    .line 1193
    const-string v1, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception upgrading EmailProvider.db from 35 to 36 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_16

    .line 1200
    :catch_15
    move-exception v0

    .line 1202
    const-string v1, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception upgrading EmailProvider.db from 37 to 38 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_17

    .line 1211
    :catch_16
    move-exception v0

    .line 1213
    const-string v1, "EmailProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception upgrading EmailProvider.db from 38 to 39 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_18

    .line 1223
    :catch_17
    move-exception v0

    .line 1225
    const-string v1, "EmailProvider"

    const-string v3, "Exception upgrading EmailProvider.db from v10x to v103"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_19

    .line 1232
    :catch_18
    move-exception v0

    .line 1234
    const-string v1, "EmailProvider"

    const-string v3, "Exception upgrading EmailProvider.db from v103 to v104"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1a

    .line 1243
    :catch_19
    move-exception v0

    .line 1245
    const-string v1, "EmailProvider"

    const-string v3, "Exception upgrading EmailProvider.db from v104 to v105"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1b

    .line 1252
    :catch_1a
    move-exception v0

    .line 1254
    const-string v1, "EmailProvider"

    const-string v3, "Exception upgrading EmailProvider.db from v105 to v106"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1c

    .line 1265
    :catch_1b
    move-exception v0

    .line 1267
    const-string v1, "EmailProvider"

    const-string v3, "Exception upgrading EmailProvider.db from v106 to v107"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1d

    .line 1274
    :catch_1c
    move-exception v0

    .line 1276
    const-string v1, "EmailProvider"

    const-string v3, "Exception upgrading EmailProvider.db from v107 to v108"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1e

    .line 1331
    :catch_1d
    move-exception v0

    .line 1333
    const-string v1, "EmailProvider"

    const-string v3, "Exception upgrading EmailProvider.db from v113 to v114"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1f

    .line 1344
    :catch_1e
    move-exception v0

    .line 1346
    const-string v1, "EmailProvider"

    const-string v3, "Exception upgrading EmailProvider.db from v113 to v114"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_20

    .line 1450
    :catch_1f
    move-exception v0

    .line 1452
    const-string v1, "EmailProvider"

    const-string v3, "Exception upgrading EmailProvider.db from v123 to v124"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v1, v3, v4}, Lcom/android/mail/utils/E;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_21
.end method
