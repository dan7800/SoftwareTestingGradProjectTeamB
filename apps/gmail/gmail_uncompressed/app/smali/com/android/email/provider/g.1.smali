.class public final Lcom/android/email/provider/g;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 795
    const/4 v0, 0x0

    const/16 v1, 0x65

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 796
    iput-object p1, p0, Lcom/android/email/provider/g;->mContext:Landroid/content/Context;

    .line 797
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 801
    const-string v0, "EmailProvider"

    const-string v1, "Creating EmailProviderBody database"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 802
    invoke-static {p1}, Lcom/android/email/provider/f;->n(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 803
    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 823
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 807
    const/4 v0, 0x5

    if-ge p2, v0, :cond_0

    .line 808
    invoke-static {p1}, Lcom/android/email/provider/f;->r(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 810
    :cond_0
    const/4 v0, 0x6

    if-ge p2, v0, :cond_1

    .line 811
    invoke-static {p1}, Lcom/android/email/provider/f;->s(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 813
    :cond_1
    const/16 v0, 0x8

    if-ge p2, v0, :cond_2

    .line 814
    invoke-static {p1}, Lcom/android/email/provider/f;->t(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 816
    :cond_2
    const/16 v0, 0x65

    if-ge p2, v0, :cond_3

    .line 817
    iget-object v0, p0, Lcom/android/email/provider/g;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/email/provider/f;->d(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 819
    :cond_3
    return-void
.end method
