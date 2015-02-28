.class public Lcom/google/android/gms/internal/sn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/reminders/model/Task;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/sn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bGC:Ljava/lang/String;

.field private final bZA:Lcom/google/android/gms/internal/sj;

.field private final bZB:Lcom/google/android/gms/internal/sl;

.field private final bZC:Ljava/lang/Long;

.field private final bZq:Lcom/google/android/gms/internal/sp;

.field private final bZr:Lcom/google/android/gms/internal/sr;

.field private final bZs:Ljava/lang/Long;

.field private final bZt:Ljava/lang/Long;

.field private final bZu:Ljava/lang/Boolean;

.field private final bZv:Ljava/lang/Boolean;

.field private final bZw:Ljava/lang/Boolean;

.field private final bZx:Ljava/lang/Boolean;

.field private final bZy:Ljava/lang/Long;

.field private final bZz:Lcom/google/android/gms/internal/sj;

.field public final btV:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/df;

    invoke-direct {v0}, Lcom/google/android/gms/internal/df;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/sn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/sp;Lcom/google/android/gms/internal/sr;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/android/gms/internal/sj;Lcom/google/android/gms/internal/sj;Lcom/google/android/gms/internal/sl;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/sn;->bZq:Lcom/google/android/gms/internal/sp;

    iput-object p3, p0, Lcom/google/android/gms/internal/sn;->bZr:Lcom/google/android/gms/internal/sr;

    iput-object p4, p0, Lcom/google/android/gms/internal/sn;->bGC:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/sn;->bZs:Ljava/lang/Long;

    iput-object p6, p0, Lcom/google/android/gms/internal/sn;->bZt:Ljava/lang/Long;

    iput-object p7, p0, Lcom/google/android/gms/internal/sn;->bZu:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/google/android/gms/internal/sn;->bZv:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/google/android/gms/internal/sn;->bZw:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/google/android/gms/internal/sn;->bZx:Ljava/lang/Boolean;

    iput-object p11, p0, Lcom/google/android/gms/internal/sn;->bZy:Ljava/lang/Long;

    iput-object p12, p0, Lcom/google/android/gms/internal/sn;->bZz:Lcom/google/android/gms/internal/sj;

    iput-object p13, p0, Lcom/google/android/gms/internal/sn;->bZA:Lcom/google/android/gms/internal/sj;

    iput-object p14, p0, Lcom/google/android/gms/internal/sn;->bZB:Lcom/google/android/gms/internal/sl;

    iput-object p15, p0, Lcom/google/android/gms/internal/sn;->bZC:Ljava/lang/Long;

    iput p1, p0, Lcom/google/android/gms/internal/sn;->btV:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/reminders/model/Task;)V
    .locals 15

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->Sg()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->Sh()Lcom/google/android/gms/reminders/model/TaskList;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->Si()Ljava/lang/Long;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->Sj()Ljava/lang/Long;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->Sk()Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->Sl()Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->Sm()Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->Sn()Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->So()Ljava/lang/Long;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->Sp()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->Sq()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->Sr()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/reminders/model/Task;->Ss()Ljava/lang/Long;

    move-result-object v14

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/sn;-><init>(Lcom/google/android/gms/reminders/model/TaskId;Lcom/google/android/gms/reminders/model/TaskList;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/Location;Ljava/lang/Long;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/reminders/model/TaskId;Lcom/google/android/gms/reminders/model/TaskList;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/DateTime;Lcom/google/android/gms/reminders/model/Location;Ljava/lang/Long;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/sn;->bZq:Lcom/google/android/gms/internal/sp;

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/sn;->bZr:Lcom/google/android/gms/internal/sr;

    iput-object p3, p0, Lcom/google/android/gms/internal/sn;->bGC:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/sn;->bZs:Ljava/lang/Long;

    iput-object p5, p0, Lcom/google/android/gms/internal/sn;->bZt:Ljava/lang/Long;

    iput-object p6, p0, Lcom/google/android/gms/internal/sn;->bZu:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/google/android/gms/internal/sn;->bZv:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/google/android/gms/internal/sn;->bZw:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/google/android/gms/internal/sn;->bZx:Ljava/lang/Boolean;

    iput-object p10, p0, Lcom/google/android/gms/internal/sn;->bZy:Ljava/lang/Long;

    if-nez p11, :cond_2

    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/internal/sn;->bZz:Lcom/google/android/gms/internal/sj;

    if-nez p12, :cond_3

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/internal/sn;->bZA:Lcom/google/android/gms/internal/sj;

    if-nez p13, :cond_4

    const/4 v0, 0x0

    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/internal/sn;->bZB:Lcom/google/android/gms/internal/sl;

    iput-object p14, p0, Lcom/google/android/gms/internal/sn;->bZC:Ljava/lang/Long;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/sn;->btV:I

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/sp;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/sp;-><init>(Lcom/google/android/gms/reminders/model/TaskId;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/sr;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/sr;-><init>(Lcom/google/android/gms/reminders/model/TaskList;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/sj;

    invoke-direct {v0, p11}, Lcom/google/android/gms/internal/sj;-><init>(Lcom/google/android/gms/reminders/model/DateTime;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/sj;

    invoke-direct {v0, p12}, Lcom/google/android/gms/internal/sj;-><init>(Lcom/google/android/gms/reminders/model/DateTime;)V

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/sl;

    invoke-direct {v0, p13}, Lcom/google/android/gms/internal/sl;-><init>(Lcom/google/android/gms/reminders/model/Location;)V

    goto :goto_4
.end method


# virtual methods
.method public final synthetic KN()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final Sg()Lcom/google/android/gms/reminders/model/TaskId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->bZq:Lcom/google/android/gms/internal/sp;

    return-object v0
.end method

.method public final Sh()Lcom/google/android/gms/reminders/model/TaskList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->bZr:Lcom/google/android/gms/internal/sr;

    return-object v0
.end method

.method public final Si()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->bZs:Ljava/lang/Long;

    return-object v0
.end method

.method public final Sj()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->bZt:Ljava/lang/Long;

    return-object v0
.end method

.method public final Sk()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->bZu:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final Sl()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->bZv:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final Sm()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->bZw:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final Sn()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->bZx:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final So()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->bZy:Ljava/lang/Long;

    return-object v0
.end method

.method public final Sp()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->bZz:Lcom/google/android/gms/internal/sj;

    return-object v0
.end method

.method public final Sq()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->bZA:Lcom/google/android/gms/internal/sj;

    return-object v0
.end method

.method public final Sr()Lcom/google/android/gms/reminders/model/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->bZB:Lcom/google/android/gms/internal/sl;

    return-object v0
.end method

.method public final Ss()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->bZC:Ljava/lang/Long;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/sn;->bGC:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/internal/sn;Landroid/os/Parcel;I)V

    return-void
.end method
