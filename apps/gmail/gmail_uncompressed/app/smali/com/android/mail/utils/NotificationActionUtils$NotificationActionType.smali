.class public final enum Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aPU:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

.field public static final enum aPV:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

.field public static final enum aPW:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

.field public static final enum aPX:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

.field private static final aPY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic aPZ:[Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;


# instance fields
.field private final mActionIcon:I

.field private final mActionIcon2:I

.field private final mActionToggler:Lcom/android/mail/utils/M;

.field private final mDisplayString:I

.field private final mDisplayString2:I

.field private final mIsDestructive:Z

.field private final mPersistedValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 84
    new-instance v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    const-string v1, "ARCHIVE_REMOVE_LABEL"

    const-string v3, "archive"

    new-instance v4, Lcom/android/mail/utils/L;

    invoke-direct {v4}, Lcom/android/mail/utils/L;-><init>()V

    invoke-direct {v0, v1, v3, v4}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/utils/M;)V

    sput-object v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPU:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 93
    new-instance v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    const-string v1, "DELETE"

    const-string v3, "delete"

    const v5, 0x7f02008e

    const v6, 0x7f090174

    move v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;-><init>(Ljava/lang/String;ILjava/lang/String;ZII)V

    sput-object v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPV:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 95
    new-instance v3, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    const-string v4, "REPLY"

    const-string v6, "reply"

    const v8, 0x7f0200f4

    const v9, 0x7f090170

    move v5, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;-><init>(Ljava/lang/String;ILjava/lang/String;ZII)V

    sput-object v3, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPW:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 96
    new-instance v3, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    const-string v4, "REPLY_ALL"

    const-string v6, "reply_all"

    const v8, 0x7f0200f3

    const v9, 0x7f090171

    move v5, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;-><init>(Ljava/lang/String;ILjava/lang/String;ZII)V

    sput-object v3, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPX:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    sget-object v1, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPU:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPV:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPW:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPX:Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    aput-object v1, v0, v11

    sput-object v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPZ:[Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    .line 122
    invoke-static {}, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->values()[Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/google/common/collect/y;

    invoke-direct {v1}, Lcom/google/common/collect/y;-><init>()V

    .line 126
    :goto_0
    array-length v2, v0

    if-ge v7, v2, :cond_0

    .line 127
    aget-object v2, v0, v7

    iget-object v2, v2, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mPersistedValue:Ljava/lang/String;

    aget-object v3, v0, v7

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/y;->p(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;

    .line 126
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/y;->Zo()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPY:Ljava/util/Map;

    .line 131
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;ZII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput-object p3, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mPersistedValue:Ljava/lang/String;

    .line 136
    iput-boolean p4, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mIsDestructive:Z

    .line 137
    iput p5, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mActionIcon:I

    .line 138
    iput v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mActionIcon2:I

    .line 139
    iput p6, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mDisplayString:I

    .line 140
    iput v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mDisplayString2:I

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mActionToggler:Lcom/android/mail/utils/M;

    .line 142
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/mail/utils/M;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput-object p2, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mPersistedValue:Ljava/lang/String;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mIsDestructive:Z

    .line 149
    const v0, 0x7f020077

    iput v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mActionIcon:I

    .line 150
    const v0, 0x7f0200f0

    iput v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mActionIcon2:I

    .line 151
    const v0, 0x7f090172

    iput v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mDisplayString:I

    .line 152
    const v0, 0x7f090173

    iput v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mDisplayString2:I

    .line 153
    iput-object p3, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mActionToggler:Lcom/android/mail/utils/M;

    .line 154
    return-void
.end method

.method public static cB(Ljava/lang/String;)Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPY:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    return-object v0
.end method

.method public static values()[Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->aPZ:[Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    invoke-virtual {v0}, [Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;

    return-object v0
.end method


# virtual methods
.method public final AZ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mPersistedValue:Ljava/lang/String;

    return-object v0
.end method

.method public final Ba()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mIsDestructive:Z

    return v0
.end method

.method public final q(Lcom/android/mail/providers/Folder;)I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mActionToggler:Lcom/android/mail/utils/M;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mActionToggler:Lcom/android/mail/utils/M;

    invoke-interface {v0, p1}, Lcom/android/mail/utils/M;->s(Lcom/android/mail/providers/Folder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    iget v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mActionIcon:I

    .line 175
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mActionIcon2:I

    goto :goto_0
.end method

.method public final r(Lcom/android/mail/providers/Folder;)I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mActionToggler:Lcom/android/mail/utils/M;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mActionToggler:Lcom/android/mail/utils/M;

    invoke-interface {v0, p1}, Lcom/android/mail/utils/M;->s(Lcom/android/mail/providers/Folder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    iget v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mDisplayString:I

    .line 185
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/mail/utils/NotificationActionUtils$NotificationActionType;->mDisplayString2:I

    goto :goto_0
.end method
