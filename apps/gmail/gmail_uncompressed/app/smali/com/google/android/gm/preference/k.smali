.class final Lcom/google/android/gm/preference/k;
.super Lcom/google/android/gm/c/h;
.source "SourceFile"


# instance fields
.field final synthetic bbD:Lcom/google/android/gm/preference/GmailPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/preference/GmailPreferenceActivity;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/gm/preference/k;->bbD:Lcom/google/android/gm/preference/GmailPreferenceActivity;

    const/16 v3, 0x3e8

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/c/h;-><init>(Landroid/app/Activity;Landroid/os/Bundle;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final CA()Lcom/google/android/gms/common/api/n;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gm/preference/k;->bbD:Lcom/google/android/gm/preference/GmailPreferenceActivity;

    new-instance v1, Lcom/google/android/gms/common/api/o;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/o;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/feedback/a;->bBK:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/o;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/o;->c(Lcom/google/android/gms/common/api/p;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/o;->c(Lcom/google/android/gms/common/api/q;)Lcom/google/android/gms/common/api/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/o;->Ky()Lcom/google/android/gms/common/api/n;

    move-result-object v0

    return-object v0
.end method
