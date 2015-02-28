.class final Lcom/android/mail/browse/o;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic alQ:Lcom/android/mail/browse/ConversationContainer;


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/ConversationContainer;)V
    .locals 0

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/android/mail/browse/o;->alQ:Lcom/android/mail/browse/ConversationContainer;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/ConversationContainer;B)V
    .locals 0

    .prologue
    .line 1051
    invoke-direct {p0, p1}, Lcom/android/mail/browse/o;-><init>(Lcom/android/mail/browse/ConversationContainer;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/mail/browse/o;->alQ:Lcom/android/mail/browse/ConversationContainer;

    invoke-static {v0}, Lcom/android/mail/browse/ConversationContainer;->b(Lcom/android/mail/browse/ConversationContainer;)V

    .line 1055
    return-void
.end method
