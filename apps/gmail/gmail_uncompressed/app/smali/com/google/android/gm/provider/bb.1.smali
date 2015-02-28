.class public final Lcom/google/android/gm/provider/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public address:Ljava/lang/String;

.field public blc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public replyTo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/google/android/gm/provider/bb;->name:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/google/android/gm/provider/bb;->address:Ljava/lang/String;

    .line 166
    iput-object p4, p0, Lcom/google/android/gm/provider/bb;->replyTo:Ljava/lang/String;

    .line 167
    iput-object p3, p0, Lcom/google/android/gm/provider/bb;->blc:Ljava/lang/String;

    .line 168
    return-void
.end method
