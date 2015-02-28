.class public final Lcom/google/api/client/util/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final czG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/L;->czG:Ljava/lang/String;

    return-void
.end method
