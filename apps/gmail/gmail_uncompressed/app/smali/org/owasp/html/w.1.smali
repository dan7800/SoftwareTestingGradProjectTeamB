.class public interface abstract Lorg/owasp/html/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final cIf:Lorg/owasp/html/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/owasp/html/w",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final cIg:Lorg/owasp/html/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/owasp/html/w",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lorg/owasp/html/x;

    invoke-direct {v0}, Lorg/owasp/html/x;-><init>()V

    sput-object v0, Lorg/owasp/html/w;->cIf:Lorg/owasp/html/w;

    .line 53
    new-instance v0, Lorg/owasp/html/y;

    invoke-direct {v0}, Lorg/owasp/html/y;-><init>()V

    sput-object v0, Lorg/owasp/html/w;->cIg:Lorg/owasp/html/w;

    return-void
.end method


# virtual methods
.method public abstract U(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
