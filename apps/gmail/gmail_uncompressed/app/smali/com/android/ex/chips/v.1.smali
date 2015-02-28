.class abstract Lcom/android/ex/chips/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final adk:Landroid/net/Uri;

.field private final adl:Landroid/net/Uri;

.field private final eN:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/android/ex/chips/v;->eN:[Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/android/ex/chips/v;->adk:Landroid/net/Uri;

    .line 90
    iput-object p3, p0, Lcom/android/ex/chips/v;->adl:Landroid/net/Uri;

    .line 91
    return-void
.end method


# virtual methods
.method public final getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/ex/chips/v;->eN:[Ljava/lang/String;

    return-object v0
.end method

.method public abstract getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
.end method

.method public final mA()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/ex/chips/v;->adk:Landroid/net/Uri;

    return-object v0
.end method

.method public final mB()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/ex/chips/v;->adl:Landroid/net/Uri;

    return-object v0
.end method
