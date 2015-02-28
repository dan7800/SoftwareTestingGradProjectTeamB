.class public final Lcom/android/ex/chips/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final acA:I

.field public final acB:Ljava/lang/String;

.field public final acC:J

.field public final acD:Ljava/lang/Long;

.field public final acE:J

.field public final acF:Ljava/lang/String;

.field public final acG:I

.field public final acH:Ljava/lang/String;

.field public final acv:Ljava/lang/String;

.field public final acz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/i;->acv:Ljava/lang/String;

    .line 164
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/i;->acz:Ljava/lang/String;

    .line 165
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/i;->acA:I

    .line 166
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/i;->acB:Ljava/lang/String;

    .line 167
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/chips/i;->acC:J

    .line 168
    iput-object p2, p0, Lcom/android/ex/chips/i;->acD:Ljava/lang/Long;

    .line 169
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/chips/i;->acE:J

    .line 170
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/i;->acF:Ljava/lang/String;

    .line 171
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/ex/chips/i;->acG:I

    .line 172
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/i;->acH:Ljava/lang/String;

    .line 173
    return-void
.end method
