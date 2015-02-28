.class final Lcom/google/android/gm/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/i/j;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final tX()Lcom/android/mail/i/d;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/gm/preference/m;

    invoke-direct {v0}, Lcom/google/android/gm/preference/m;-><init>()V

    return-object v0
.end method
