.class final Lcom/google/android/gm/provider/aE;
.super Lcom/google/android/gm/provider/aR;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;Lcom/google/android/gm/provider/aS;)V
    .locals 0

    .prologue
    .line 6908
    iput-object p1, p0, Lcom/google/android/gm/provider/aE;->bjA:Lcom/google/android/gm/provider/MailEngine;

    .line 6909
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gm/provider/aR;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;Lcom/google/android/gm/provider/aS;)V

    .line 6910
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 6915
    new-instance v1, Lcom/android/mail/utils/H;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/aE;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gm/provider/aE;->getCount()I

    move-result v2

    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/aE;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {v1, v0, v2, v3}, Lcom/android/mail/utils/H;-><init>([Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 6918
    invoke-super {p0}, Lcom/google/android/gm/provider/aR;->getColumnCount()I

    move-result v2

    .line 6919
    const-string v0, "body"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/aE;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 6920
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/aE;->moveToPosition(I)Z

    .line 6921
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/aE;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6922
    new-array v4, v2, [Ljava/lang/Object;

    .line 6923
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 6926
    if-ne v0, v3, :cond_0

    .line 6927
    invoke-virtual {p0, v3}, Lcom/google/android/gm/provider/aE;->getBlob(I)[B

    move-result-object v5

    aput-object v5, v4, v0

    .line 6923
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6932
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/aE;->getType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 6947
    const/4 v5, 0x0

    aput-object v5, v4, v0

    goto :goto_2

    .line 6934
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/aE;->getBlob(I)[B

    move-result-object v5

    aput-object v5, v4, v0

    goto :goto_2

    .line 6937
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/aE;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v0

    goto :goto_2

    .line 6940
    :pswitch_2
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/aE;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v0

    goto :goto_2

    .line 6943
    :pswitch_3
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/aE;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    goto :goto_2

    .line 6950
    :cond_1
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 6953
    :cond_2
    return-object v1

    .line 6932
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
