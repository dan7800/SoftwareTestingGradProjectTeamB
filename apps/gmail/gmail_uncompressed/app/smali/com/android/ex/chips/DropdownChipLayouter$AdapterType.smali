.class public final enum Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum acY:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

.field public static final enum acZ:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

.field public static final enum ada:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

.field private static final synthetic adb:[Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    const-string v1, "BASE_RECIPIENT"

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->acY:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    .line 31
    new-instance v0, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    const-string v1, "RECIPIENT_ALTERNATES"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->acZ:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    .line 32
    new-instance v0, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    const-string v1, "SINGLE_RECIPIENT"

    invoke-direct {v0, v1, v4}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ada:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    sget-object v1, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->acY:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->acZ:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ada:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->adb:[Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->adb:[Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    invoke-virtual {v0}, [Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    return-object v0
.end method
