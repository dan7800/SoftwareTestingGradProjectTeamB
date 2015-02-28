.class public final Lcom/google/android/gms/b/g;
.super Lcom/android/ex/chips/ae;
.source "SourceFile"


# instance fields
.field private final bBG:Ljava/lang/String;

.field private final bBH:Lcom/google/android/gms/people/model/AvatarReference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/people/model/b;)V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 19
    invoke-interface {p1}, Lcom/google/android/gms/people/model/b;->RU()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/people/model/b;->RV()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {p1}, Lcom/google/android/gms/people/model/b;->RS()J

    move-result-wide v5

    invoke-interface {p1}, Lcom/google/android/gms/people/model/b;->RT()J

    move-result-wide v8

    move-object v0, p0

    move-object v7, v4

    move-object v10, v4

    move v12, v11

    move-object v13, v4

    invoke-direct/range {v0 .. v13}, Lcom/android/ex/chips/ae;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLandroid/net/Uri;ZZLjava/lang/String;)V

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/people/model/b;->Ki()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/g;->bBG:Ljava/lang/String;

    .line 26
    invoke-interface {p1}, Lcom/google/android/gms/people/model/b;->Kh()Lcom/google/android/gms/people/model/AvatarReference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/g;->bBH:Lcom/google/android/gms/people/model/AvatarReference;

    .line 27
    return-void
.end method


# virtual methods
.method public final Kh()Lcom/google/android/gms/people/model/AvatarReference;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/b/g;->bBH:Lcom/google/android/gms/people/model/AvatarReference;

    return-object v0
.end method

.method public final Ki()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/b/g;->bBG:Ljava/lang/String;

    return-object v0
.end method
