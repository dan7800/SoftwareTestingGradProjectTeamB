.class public interface abstract Lcom/google/api/client/util/I;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final czF:Lcom/google/api/client/util/I;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/google/api/client/util/J;

    invoke-direct {v0}, Lcom/google/api/client/util/J;-><init>()V

    sput-object v0, Lcom/google/api/client/util/I;->czF:Lcom/google/api/client/util/I;

    return-void
.end method


# virtual methods
.method public abstract sleep(J)V
.end method
