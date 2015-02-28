.class final Lcom/google/android/gm/provider/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aav:J

.field final synthetic bcP:Lcom/google/android/gm/provider/g;

.field final synthetic bcQ:[Ljava/lang/Long;

.field final synthetic bcR:I

.field final synthetic bcS:J

.field final synthetic bcT:Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

.field final synthetic bcU:I

.field final synthetic bcV:Z

.field final synthetic bcW:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/g;[Ljava/lang/Long;IJJLcom/google/android/gm/provider/uiprovider/GmailAttachment;IZ[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/google/android/gm/provider/i;->bcP:Lcom/google/android/gm/provider/g;

    iput-object p2, p0, Lcom/google/android/gm/provider/i;->bcQ:[Ljava/lang/Long;

    iput p3, p0, Lcom/google/android/gm/provider/i;->bcR:I

    iput-wide p4, p0, Lcom/google/android/gm/provider/i;->bcS:J

    iput-wide p6, p0, Lcom/google/android/gm/provider/i;->aav:J

    iput-object p8, p0, Lcom/google/android/gm/provider/i;->bcT:Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    iput p9, p0, Lcom/google/android/gm/provider/i;->bcU:I

    iput-boolean p10, p0, Lcom/google/android/gm/provider/i;->bcV:Z

    iput-object p11, p0, Lcom/google/android/gm/provider/i;->bcW:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    .line 639
    iget-object v1, p0, Lcom/google/android/gm/provider/i;->bcP:Lcom/google/android/gm/provider/g;

    iget-object v0, p0, Lcom/google/android/gm/provider/i;->bcQ:[Ljava/lang/Long;

    iget v2, p0, Lcom/google/android/gm/provider/i;->bcR:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gm/provider/i;->bcS:J

    iget-wide v6, p0, Lcom/google/android/gm/provider/i;->aav:J

    iget-object v0, p0, Lcom/google/android/gm/provider/i;->bcT:Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    iget-object v8, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->partId:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/gm/provider/i;->bcU:I

    iget-boolean v10, p0, Lcom/google/android/gm/provider/i;->bcV:Z

    iget-object v0, p0, Lcom/google/android/gm/provider/i;->bcT:Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getName()Ljava/lang/String;

    move-result-object v11

    iget-object v0, p0, Lcom/google/android/gm/provider/i;->bcW:[Ljava/lang/String;

    iget v12, p0, Lcom/google/android/gm/provider/i;->bcR:I

    rsub-int/lit8 v12, v12, 0x1

    aget-object v12, v0, v12

    iget-object v0, p0, Lcom/google/android/gm/provider/i;->bcT:Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->getContentType()Ljava/lang/String;

    move-result-object v13

    iget-object v0, p0, Lcom/google/android/gm/provider/i;->bcT:Lcom/google/android/gm/provider/uiprovider/GmailAttachment;

    iget v14, v0, Lcom/google/android/gm/provider/uiprovider/GmailAttachment;->size:I

    invoke-static/range {v1 .. v14}, Lcom/google/android/gm/provider/g;->a(Lcom/google/android/gm/provider/g;JJJLjava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 644
    iget-object v0, p0, Lcom/google/android/gm/provider/i;->bcP:Lcom/google/android/gm/provider/g;

    iget-wide v2, p0, Lcom/google/android/gm/provider/i;->bcS:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gm/provider/g;->a(Lcom/google/android/gm/provider/g;J)V

    .line 645
    return-void
.end method
