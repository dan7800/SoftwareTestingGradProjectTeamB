.class public Lcom/android/email/activity/setup/SetupDataFragment;
.super Landroid/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/activity/setup/SetupDataFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Ml:Lcom/android/emailcommon/provider/Account;

.field private PR:I

.field private PS:Ljava/lang/String;

.field private PT:Landroid/os/Bundle;

.field private PU:Z

.field private PV:Z

.field private volatile PW:Lcom/android/emailcommon/provider/Policy;

.field private PX:Lcom/android/email/service/o;

.field private PY:Ljava/lang/String;

.field private PZ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/android/email/activity/setup/bb;

    invoke-direct {v0}, Lcom/android/email/activity/setup/bb;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/SetupDataFragment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PR:I

    .line 51
    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PU:Z

    .line 52
    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PV:Z

    .line 66
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PW:Lcom/android/emailcommon/provider/Policy;

    .line 67
    new-instance v0, Lcom/android/emailcommon/provider/Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/Account;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/SetupDataFragment;->e(Lcom/android/emailcommon/provider/Account;)V

    .line 68
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PS:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PT:Landroid/os/Bundle;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 253
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 45
    iput v2, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PR:I

    .line 51
    iput-boolean v3, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PU:Z

    .line 52
    iput-boolean v3, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PV:Z

    .line 254
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PR:I

    .line 256
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/SetupDataFragment;->e(Lcom/android/emailcommon/provider/Account;)V

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PS:Ljava/lang/String;

    .line 258
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PT:Landroid/os/Bundle;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 260
    aget-boolean v2, v0, v2

    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PU:Z

    .line 261
    aget-boolean v0, v0, v3

    iput-boolean v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PV:Z

    .line 262
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    iput-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PW:Lcom/android/emailcommon/provider/Policy;

    .line 263
    return-void
.end method


# virtual methods
.method public final A(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PY:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PY:Ljava/lang/String;

    .line 201
    :goto_0
    return-object v0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 201
    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->Zh:Ljava/lang/String;

    goto :goto_0
.end method

.method public final B(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 213
    iget-object v0, v0, Lcom/android/emailcommon/provider/HostAuth;->Zk:Ljava/lang/String;

    return-object v0
.end method

.method public final aT(I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PR:I

    .line 110
    return-void
.end method

.method public final declared-synchronized c(Lcom/android/emailcommon/provider/Policy;)V
    .locals 1

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PW:Lcom/android/emailcommon/provider/Policy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Lcom/android/emailcommon/provider/Account;)V
    .locals 1

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    .line 118
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Account;->lv()V

    .line 119
    return-void
.end method

.method public final f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/Account;->Z(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v0

    .line 206
    iget-object v1, v0, Lcom/android/emailcommon/provider/HostAuth;->WA:Ljava/lang/String;

    iget v2, v0, Lcom/android/emailcommon/provider/HostAuth;->Zi:I

    iget v3, v0, Lcom/android/emailcommon/provider/HostAuth;->dM:I

    invoke-virtual {v0, p2, v1, v2, v3}, Lcom/android/emailcommon/provider/HostAuth;->a(Ljava/lang/String;Ljava/lang/String;II)V

    .line 207
    iput-object p2, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PY:Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PX:Lcom/android/email/service/o;

    .line 209
    return-void
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    iput-object p1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PT:Landroid/os/Bundle;

    .line 138
    iput-boolean v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PU:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PV:Z

    .line 140
    return-void
.end method

.method public final hQ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PS:Ljava/lang/String;

    return-object v0
.end method

.method public final hT()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PT:Landroid/os/Bundle;

    return-object v0
.end method

.method public final iA()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PR:I

    return v0
.end method

.method public final iB()Lcom/android/emailcommon/provider/Account;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method public final iC()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PU:Z

    return v0
.end method

.method public final iD()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PU:Z

    .line 148
    return-void
.end method

.method public final iE()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PV:Z

    return v0
.end method

.method public final iF()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PV:Z

    .line 156
    return-void
.end method

.method public final declared-synchronized iG()Lcom/android/emailcommon/provider/Policy;
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PW:Lcom/android/emailcommon/provider/Policy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final iH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PY:Ljava/lang/String;

    return-object v0
.end method

.method public final iI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PZ:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    if-eqz p1, :cond_0

    .line 90
    const-string v0, "SetupDataFragment.flowMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PR:I

    .line 91
    const-string v0, "SetupDataFragment.account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/SetupDataFragment;->e(Lcom/android/emailcommon/provider/Account;)V

    .line 92
    const-string v0, "SetupDataFragment.email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PS:Ljava/lang/String;

    .line 93
    const-string v0, "SetupDataFragment.credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PT:Landroid/os/Bundle;

    .line 94
    const-string v0, "SetupDataFragment.incomingLoaded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PU:Z

    .line 95
    const-string v0, "SetupDataFragment.outgoingLoaded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PV:Z

    .line 96
    const-string v0, "SetupDataFragment.policy"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/Policy;

    iput-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PW:Lcom/android/emailcommon/provider/Policy;

    .line 97
    const-string v0, "SetupDataFragment.incomingProtocol"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PY:Ljava/lang/String;

    .line 98
    const-string v0, "SetupDataFragment.amProtocol"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PZ:Ljava/lang/String;

    .line 100
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/SetupDataFragment;->setRetainInstance(Z)V

    .line 101
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "SetupDataFragment.flowMode"

    iget v1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PR:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v0, "SetupDataFragment.account"

    iget-object v1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 77
    const-string v0, "SetupDataFragment.email"

    iget-object v1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PS:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "SetupDataFragment.credential"

    iget-object v1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PT:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    const-string v0, "SetupDataFragment.incomingLoaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PU:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    const-string v0, "SetupDataFragment.outgoingLoaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PV:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    const-string v0, "SetupDataFragment.policy"

    iget-object v1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PW:Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    const-string v0, "SetupDataFragment.incomingProtocol"

    iget-object v1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "SetupDataFragment.amProtocol"

    iget-object v1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PZ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "SetupData"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    const-string v0, ":acct="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    if-nez v0, :cond_2

    const-string v0, "none"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PS:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 271
    const-string v0, ":user="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PS:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PT:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 275
    const-string v0, ":cred="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PT:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_1
    const-string v0, ":policy="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PW:Lcom/android/emailcommon/provider/Policy;

    if-nez v0, :cond_3

    const-string v0, "none"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->Ln:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_3
    const-string v0, "exists"

    goto :goto_1
.end method

.method public final w(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    iput-object p1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PS:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    iput-object p1, v0, Lcom/android/emailcommon/provider/Account;->NP:Ljava/lang/String;

    .line 128
    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PU:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PV:Z

    .line 130
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 245
    iget v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PR:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->Ml:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 247
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PT:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 249
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PU:Z

    aput-boolean v1, v0, v3

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PV:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 250
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PW:Lcom/android/emailcommon/provider/Policy;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 251
    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PZ:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public final z(Landroid/content/Context;)Lcom/android/email/service/o;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PX:Lcom/android/email/service/o;

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/SetupDataFragment;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/email/service/n;->l(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/service/o;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PX:Lcom/android/email/service/o;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupDataFragment;->PX:Lcom/android/email/service/o;

    return-object v0
.end method
