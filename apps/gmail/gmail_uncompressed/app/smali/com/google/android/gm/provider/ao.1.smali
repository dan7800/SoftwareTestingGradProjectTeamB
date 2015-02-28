.class final Lcom/google/android/gm/provider/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CursorFactory;


# instance fields
.field final synthetic bjA:Lcom/google/android/gm/provider/MailEngine;

.field final synthetic bjC:Lcom/google/android/gm/provider/aG;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/aG;)V
    .locals 0

    .prologue
    .line 2906
    iput-object p1, p0, Lcom/google/android/gm/provider/ao;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iput-object p2, p0, Lcom/google/android/gm/provider/ao;->bjC:Lcom/google/android/gm/provider/aG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 2911
    new-instance v0, Lcom/google/android/gm/provider/aF;

    iget-object v1, p0, Lcom/google/android/gm/provider/ao;->bjA:Lcom/google/android/gm/provider/MailEngine;

    iget-object v6, p0, Lcom/google/android/gm/provider/ao;->bjC:Lcom/google/android/gm/provider/aG;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/aF;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;Lcom/google/android/gm/provider/aS;)V

    return-object v0
.end method
