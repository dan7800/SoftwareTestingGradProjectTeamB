.class public final Lcom/android/emailcommon/a/c;
.super Lcom/android/emailcommon/mail/d;
.source "SourceFile"


# static fields
.field private static final Wd:Ljava/util/regex/Pattern;

.field private static final We:Ljava/util/regex/Pattern;


# instance fields
.field protected Wb:Lcom/android/emailcommon/a/d;

.field protected Wc:Lcom/android/emailcommon/mail/c;

.field protected gO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/a/c;->Wd:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "\r?\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/a/c;->We:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/c;-><init>(B)V

    .line 46
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0, v0}, Lcom/android/emailcommon/a/c;-><init>(Lcom/android/emailcommon/mail/c;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/emailcommon/mail/c;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/emailcommon/mail/d;-><init>()V

    .line 34
    new-instance v0, Lcom/android/emailcommon/a/d;

    invoke-direct {v0}, Lcom/android/emailcommon/a/d;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/a/c;->Wb:Lcom/android/emailcommon/a/d;

    .line 53
    if-eqz p2, :cond_0

    .line 54
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p2}, Lcom/android/emailcommon/a/c;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/a/c;->a(Lcom/android/emailcommon/mail/c;)V

    .line 57
    return-void
.end method

.method private X(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/emailcommon/a/c;->Wb:Lcom/android/emailcommon/a/d;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/a/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final Y(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/emailcommon/a/c;->Wb:Lcom/android/emailcommon/a/d;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/a/d;->Y(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Z(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/emailcommon/a/c;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Lcom/android/emailcommon/mail/c;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 90
    iput-object p1, p0, Lcom/android/emailcommon/a/c;->Wc:Lcom/android/emailcommon/mail/c;

    .line 91
    instance-of v0, p1, Lcom/android/emailcommon/mail/h;

    if-eqz v0, :cond_1

    .line 92
    check-cast p1, Lcom/android/emailcommon/mail/h;

    .line 94
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/mail/h;->c(Lcom/android/emailcommon/mail/j;)V

    .line 95
    const-string v0, "Content-Type"

    invoke-virtual {p1}, Lcom/android/emailcommon/mail/h;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/a/c;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    instance-of v0, p1, Lcom/android/emailcommon/a/k;

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "%s;\n charset=utf-8"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/emailcommon/a/c;->getMimeType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/android/emailcommon/a/c;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/android/emailcommon/a/i;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";\n name=\"%s\""

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_2
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, v0}, Lcom/android/emailcommon/a/c;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "Content-Transfer-Encoding"

    const-string v1, "base64"

    invoke-virtual {p0, v0, v1}, Lcom/android/emailcommon/a/c;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/emailcommon/a/c;->Wb:Lcom/android/emailcommon/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/a/d;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "Content-Type"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/c;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    if-nez v0, :cond_0

    .line 112
    const-string v0, "text/plain"

    .line 114
    :cond_0
    return-object v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/emailcommon/a/c;->getContentType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/emailcommon/a/i;->r(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/emailcommon/a/c;->gO:I

    return v0
.end method

.method public final kO()Lcom/android/emailcommon/mail/c;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/emailcommon/a/c;->Wc:Lcom/android/emailcommon/mail/c;

    return-object v0
.end method

.method public final kP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "Content-Disposition"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/c;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :cond_0
    return-object v0
.end method

.method public final kQ()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    const-string v0, "Content-ID"

    invoke-direct {p0, v0}, Lcom/android/emailcommon/a/c;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/android/emailcommon/a/c;->Wd:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/emailcommon/a/c;->Wb:Lcom/android/emailcommon/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/android/emailcommon/a/d;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public final setSize(I)V
    .locals 0

    .prologue
    .line 150
    iput p1, p0, Lcom/android/emailcommon/a/c;->gO:I

    .line 151
    return-void
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 201
    iget-object v1, p0, Lcom/android/emailcommon/a/c;->Wb:Lcom/android/emailcommon/a/d;

    invoke-virtual {v1, p1}, Lcom/android/emailcommon/a/d;->writeTo(Ljava/io/OutputStream;)V

    .line 202
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 204
    iget-object v0, p0, Lcom/android/emailcommon/a/c;->Wc:Lcom/android/emailcommon/mail/c;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/emailcommon/a/c;->Wc:Lcom/android/emailcommon/mail/c;

    invoke-interface {v0, p1}, Lcom/android/emailcommon/mail/c;->writeTo(Ljava/io/OutputStream;)V

    .line 207
    :cond_0
    return-void
.end method
