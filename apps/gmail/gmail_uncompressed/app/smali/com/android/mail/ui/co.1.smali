.class final Lcom/android/mail/ui/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/mail/ui/co;-><init>()V

    return-void
.end method

.method private static cq(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 120
    const/4 v2, 0x6

    aput-byte v2, v1, v4

    .line 121
    array-length v2, v0

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    new-instance v0, Landroid/nfc/NdefRecord;

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_URI:[B

    new-array v3, v4, [B

    invoke-direct {v0, v5, v2, v3, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 124
    new-instance v1, Landroid/nfc/NdefMessage;

    new-array v2, v5, [Landroid/nfc/NdefRecord;

    aput-object v0, v2, v4

    invoke-direct {v1, v2}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v1

    .line 116
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/mail/ui/MailActivity;->aLb:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mail/ui/MailActivity;->aLb:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/ui/co;->cq(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v0

    goto :goto_0
.end method
