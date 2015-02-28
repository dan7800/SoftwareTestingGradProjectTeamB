.class final Lcom/android/mail/ui/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/mail/ui/dk;


# instance fields
.field final synthetic aGd:Lcom/android/mail/ui/ae;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ae;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/mail/ui/ag;->aGd:Lcom/android/mail/ui/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final xM()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/mail/ui/ag;->aGd:Lcom/android/mail/ui/ae;

    invoke-virtual {v0}, Lcom/android/mail/ui/ae;->notifyDataSetChanged()V

    .line 159
    return-void
.end method
