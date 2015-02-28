.class final Lcom/google/android/gm/vacation/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic brL:Lcom/google/android/gm/vacation/VacationResponderActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/vacation/VacationResponderActivity;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/android/gm/vacation/g;->brL:Lcom/google/android/gm/vacation/VacationResponderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/gm/vacation/g;->brL:Lcom/google/android/gm/vacation/VacationResponderActivity;

    invoke-static {v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->b(Lcom/google/android/gm/vacation/VacationResponderActivity;)Lcom/google/android/gm/provider/bH;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/vacation/g;->brL:Lcom/google/android/gm/vacation/VacationResponderActivity;

    invoke-static {v1}, Lcom/google/android/gm/vacation/VacationResponderActivity;->a(Lcom/google/android/gm/vacation/VacationResponderActivity;)Lcom/google/android/gm/provider/bI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bH;->b(Lcom/google/android/gm/provider/bI;)V

    .line 432
    iget-object v0, p0, Lcom/google/android/gm/vacation/g;->brL:Lcom/google/android/gm/vacation/VacationResponderActivity;

    invoke-static {v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->c(Lcom/google/android/gm/vacation/VacationResponderActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->FR()V

    .line 433
    return-void
.end method
