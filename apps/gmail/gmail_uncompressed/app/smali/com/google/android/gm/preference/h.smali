.class final Lcom/google/android/gm/preference/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bby:Ljava/lang/String;

.field final synthetic bbz:Lcom/google/android/gm/preference/g;


# direct methods
.method constructor <init>(Lcom/google/android/gm/preference/g;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/gm/preference/h;->bbz:Lcom/google/android/gm/preference/g;

    iput-object p2, p0, Lcom/google/android/gm/preference/h;->bby:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/google/android/gm/preference/h;->bby:Ljava/lang/String;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "gmail-ls"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 63
    return-void
.end method
