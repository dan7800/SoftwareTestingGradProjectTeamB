.class final Lcom/google/android/gm/provider/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;

.field final synthetic bjD:Lcom/google/android/gm/provider/aP;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/aP;)V
    .locals 0

    .prologue
    .line 2991
    iput-object p1, p0, Lcom/google/android/gm/provider/ap;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iput-object p2, p0, Lcom/google/android/gm/provider/ap;->bjD:Lcom/google/android/gm/provider/aP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 2996
    new-instance v0, Lcom/google/android/gm/provider/aE;

    iget-object v1, p0, Lcom/google/android/gm/provider/ap;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v6, p0, Lcom/google/android/gm/provider/ap;->bjD:Lcom/google/android/gm/provider/aP;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/aE;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;Lcom/google/android/gm/provider/aS;)V

    return-object v0
.end method
