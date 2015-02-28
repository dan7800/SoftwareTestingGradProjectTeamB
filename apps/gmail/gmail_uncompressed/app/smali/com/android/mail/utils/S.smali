.class final Lcom/android/mail/utils/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final aQo:Landroid/support/v4/app/ab;

.field public final aQp:Landroid/support/v4/app/ao;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/ab;Landroid/support/v4/app/ao;)V
    .locals 0

    .prologue
    .line 2021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2022
    iput-object p1, p0, Lcom/android/mail/utils/S;->aQo:Landroid/support/v4/app/ab;

    .line 2023
    iput-object p2, p0, Lcom/android/mail/utils/S;->aQp:Landroid/support/v4/app/ao;

    .line 2024
    return-void
.end method

.method public static a(Landroid/support/v4/app/ab;Landroid/support/v4/app/ao;)Lcom/android/mail/utils/S;
    .locals 1

    .prologue
    .line 2028
    new-instance v0, Lcom/android/mail/utils/S;

    invoke-direct {v0, p0, p1}, Lcom/android/mail/utils/S;-><init>(Landroid/support/v4/app/ab;Landroid/support/v4/app/ao;)V

    return-object v0
.end method
