.class public final Lcom/android/datetimepicker/date/b;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/datetimepicker/date/a;


# static fields
.field private static HM:Ljava/text/SimpleDateFormat;

.field private static HN:Ljava/text/SimpleDateFormat;


# instance fields
.field private final HO:Ljava/util/Calendar;

.field private HP:Lcom/android/datetimepicker/date/e;

.field private HQ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/datetimepicker/date/d;",
            ">;"
        }
    .end annotation
.end field

.field private HR:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

.field private HS:Landroid/widget/TextView;

.field private HT:Landroid/widget/LinearLayout;

.field private HU:Landroid/widget/TextView;

.field private HV:Landroid/widget/TextView;

.field private HW:Landroid/widget/TextView;

.field private HX:Lcom/android/datetimepicker/date/f;

.field private HY:Lcom/android/datetimepicker/date/q;

.field private HZ:Landroid/widget/Button;

.field private Ia:I

.field private Ib:I

.field private Ic:I

.field private Id:I

.field private If:Ljava/util/Calendar;

.field private Ig:Ljava/util/Calendar;

.field private Ih:Lcom/android/datetimepicker/a;

.field private Ii:Z

.field private Ij:Ljava/lang/String;

.field private Ik:Ljava/lang/String;

.field private Il:Ljava/lang/String;

.field private Im:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/datetimepicker/date/b;->HM:Ljava/text/SimpleDateFormat;

    .line 78
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/datetimepicker/date/b;->HN:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->HQ:Ljava/util/HashSet;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/datetimepicker/date/b;->Ia:I

    .line 97
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/b;->Ib:I

    .line 98
    const/16 v0, 0x76c

    iput v0, p0, Lcom/android/datetimepicker/date/b;->Ic:I

    .line 99
    const/16 v0, 0x834

    iput v0, p0, Lcom/android/datetimepicker/date/b;->Id:I

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/datetimepicker/date/b;->Ii:Z

    .line 139
    return-void
.end method

.method private O(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 335
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HS:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HS:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HU:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v4, v2, v3}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HV:Landroid/widget/TextView;

    sget-object v1, Lcom/android/datetimepicker/date/b;->HN:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HW:Landroid/widget/TextView;

    sget-object v1, Lcom/android/datetimepicker/date/b;->HM:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 347
    iget-object v2, p0, Lcom/android/datetimepicker/date/b;->HR:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v2, v0, v1}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->d(J)V

    .line 348
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x18

    invoke-static {v2, v0, v1, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 350
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->HT:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 352
    if-eqz p1, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v2, v0, v1, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->HR:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-static {v1, v0}, Lcom/android/datetimepicker/i;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 357
    :cond_1
    return-void
.end method

.method public static a(Lcom/android/datetimepicker/date/e;III)Lcom/android/datetimepicker/date/b;
    .locals 3

    .prologue
    .line 150
    new-instance v0, Lcom/android/datetimepicker/date/b;

    invoke-direct {v0}, Lcom/android/datetimepicker/date/b;-><init>()V

    .line 151
    iput-object p0, v0, Lcom/android/datetimepicker/date/b;->HP:Lcom/android/datetimepicker/date/e;

    iget-object v1, v0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    iget-object v1, v0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 152
    return-object v0
.end method

.method static synthetic a(Lcom/android/datetimepicker/date/b;)Lcom/android/datetimepicker/date/e;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HP:Lcom/android/datetimepicker/date/e;

    return-object v0
.end method

.method private aF(I)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1f4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 288
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 290
    packed-switch p1, :pswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v2, p0, Lcom/android/datetimepicker/date/b;->HT:Landroid/widget/LinearLayout;

    const v3, 0x3f666666    # 0.9f

    const v4, 0x3f866666    # 1.05f

    invoke-static {v2, v3, v4}, Lcom/android/datetimepicker/i;->a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 294
    iget-boolean v3, p0, Lcom/android/datetimepicker/date/b;->Ii:Z

    if-eqz v3, :cond_0

    .line 295
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 296
    iput-boolean v5, p0, Lcom/android/datetimepicker/date/b;->Ii:Z

    .line 298
    :cond_0
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->HX:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v3}, Lcom/android/datetimepicker/date/f;->gm()V

    .line 299
    iget v3, p0, Lcom/android/datetimepicker/date/b;->Ia:I

    if-eq v3, p1, :cond_1

    .line 300
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->HT:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 301
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->HW:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 302
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->HR:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v3, v5}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    .line 303
    iput p1, p0, Lcom/android/datetimepicker/date/b;->Ia:I

    .line 305
    :cond_1
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 307
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/b;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v0, v1, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->HR:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->Ij:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HR:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->Ik:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/i;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 313
    :pswitch_1
    iget-object v2, p0, Lcom/android/datetimepicker/date/b;->HW:Landroid/widget/TextView;

    const v3, 0x3f59999a    # 0.85f

    const v4, 0x3f8ccccd    # 1.1f

    invoke-static {v2, v3, v4}, Lcom/android/datetimepicker/i;->a(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 314
    iget-boolean v3, p0, Lcom/android/datetimepicker/date/b;->Ii:Z

    if-eqz v3, :cond_2

    .line 315
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 316
    iput-boolean v5, p0, Lcom/android/datetimepicker/date/b;->Ii:Z

    .line 318
    :cond_2
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->HY:Lcom/android/datetimepicker/date/q;

    invoke-virtual {v3}, Lcom/android/datetimepicker/date/q;->gm()V

    .line 319
    iget v3, p0, Lcom/android/datetimepicker/date/b;->Ia:I

    if-eq v3, p1, :cond_3

    .line 320
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->HT:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 321
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->HW:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 322
    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->HR:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v3, v6}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setDisplayedChild(I)V

    .line 323
    iput p1, p0, Lcom/android/datetimepicker/date/b;->Ia:I

    .line 325
    :cond_3
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 327
    sget-object v2, Lcom/android/datetimepicker/date/b;->HM:Ljava/text/SimpleDateFormat;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->HR:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/datetimepicker/date/b;->Il:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HR:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->Im:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/datetimepicker/i;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic b(Lcom/android/datetimepicker/date/b;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    return-object v0
.end method

.method private gl()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HQ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 469
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/datetimepicker/date/d;

    invoke-interface {v0}, Lcom/android/datetimepicker/date/d;->gm()V

    goto :goto_0

    .line 472
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/datetimepicker/date/d;)V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HQ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 498
    return-void
.end method

.method public final a(Lcom/android/datetimepicker/date/e;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/datetimepicker/date/b;->HP:Lcom/android/datetimepicker/date/e;

    .line 425
    return-void
.end method

.method public final aE(I)V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 451
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v0, p1}, Lcom/android/datetimepicker/i;->y(II)I

    move-result v0

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 453
    invoke-direct {p0}, Lcom/android/datetimepicker/date/b;->gl()V

    .line 454
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/date/b;->aF(I)V

    .line 455
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/date/b;->O(Z)V

    .line 456
    return-void
.end method

.method public final c(III)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 460
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 461
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 462
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 463
    invoke-direct {p0}, Lcom/android/datetimepicker/date/b;->gl()V

    .line 464
    invoke-direct {p0, v2}, Lcom/android/datetimepicker/date/b;->O(Z)V

    .line 465
    return-void
.end method

.method public final ge()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->Ih:Lcom/android/datetimepicker/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/a;->ge()V

    .line 508
    return-void
.end method

.method public final getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/android/datetimepicker/date/b;->Ib:I

    return v0
.end method

.method public final gf()Lcom/android/datetimepicker/date/j;
    .locals 2

    .prologue
    .line 477
    new-instance v0, Lcom/android/datetimepicker/date/j;

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    invoke-direct {v0, v1}, Lcom/android/datetimepicker/date/j;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method public final gg()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Lcom/android/datetimepicker/date/b;->Ic:I

    return v0
.end method

.method public final gh()I
    .locals 1

    .prologue
    .line 487
    iget v0, p0, Lcom/android/datetimepicker/date/b;->Id:I

    return v0
.end method

.method public final gi()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->If:Ljava/util/Calendar;

    return-object v0
.end method

.method public final gj()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->Ig:Ljava/util/Calendar;

    return-object v0
.end method

.method public final gk()V
    .locals 1

    .prologue
    .line 371
    const/16 v0, 0x7b2

    iput v0, p0, Lcom/android/datetimepicker/date/b;->Ic:I

    .line 375
    const/16 v0, 0x7f4

    iput v0, p0, Lcom/android/datetimepicker/date/b;->Id:I

    .line 376
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HX:Lcom/android/datetimepicker/date/f;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HX:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/f;->gn()V

    .line 379
    :cond_0
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->Ih:Lcom/android/datetimepicker/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/a;->ge()V

    .line 442
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/datetimepicker/f;->HA:I

    if-ne v0, v1, :cond_1

    .line 443
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/date/b;->aF(I)V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/datetimepicker/f;->Hz:I

    if-ne v0, v1, :cond_0

    .line 445
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/date/b;->aF(I)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 168
    if-eqz p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    const/4 v1, 0x1

    const-string v2, "year"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 170
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    const/4 v1, 0x2

    const-string v2, "month"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 171
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    const/4 v1, 0x5

    const-string v2, "day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 173
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    .line 198
    const-string v0, "DatePickerDialog"

    const-string v1, "onCreateView: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/b;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 201
    sget v0, Lcom/android/datetimepicker/g;->HC:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 203
    sget v0, Lcom/android/datetimepicker/f;->Hx:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->HS:Landroid/widget/TextView;

    .line 204
    sget v0, Lcom/android/datetimepicker/f;->Hz:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->HT:Landroid/widget/LinearLayout;

    .line 205
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HT:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    sget v0, Lcom/android/datetimepicker/f;->Hy:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->HU:Landroid/widget/TextView;

    .line 207
    sget v0, Lcom/android/datetimepicker/f;->Hw:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->HV:Landroid/widget/TextView;

    .line 208
    sget v0, Lcom/android/datetimepicker/f;->HA:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->HW:Landroid/widget/TextView;

    .line 209
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HW:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    const/4 v2, -0x1

    .line 212
    const/4 v1, 0x0

    .line 213
    const/4 v0, 0x0

    .line 214
    if-eqz p3, :cond_2

    .line 215
    const-string v0, "week_start"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/b;->Ib:I

    .line 216
    const-string v0, "year_start"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/b;->Ic:I

    .line 217
    const-string v0, "year_end"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/b;->Id:I

    .line 218
    const-string v0, "current_view"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 219
    const-string v1, "list_position"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 220
    const-string v1, "list_position_offset"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    move v3, v2

    move v2, v1

    move v1, v0

    .line 223
    :goto_0
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/b;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 224
    new-instance v0, Lcom/android/datetimepicker/date/n;

    invoke-direct {v0, v5, p0}, Lcom/android/datetimepicker/date/n;-><init>(Landroid/content/Context;Lcom/android/datetimepicker/date/a;)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->HX:Lcom/android/datetimepicker/date/f;

    .line 225
    new-instance v0, Lcom/android/datetimepicker/date/q;

    invoke-direct {v0, v5, p0}, Lcom/android/datetimepicker/date/q;-><init>(Landroid/content/Context;Lcom/android/datetimepicker/date/a;)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->HY:Lcom/android/datetimepicker/date/q;

    .line 227
    invoke-virtual {p0}, Lcom/android/datetimepicker/date/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 228
    sget v6, Lcom/android/datetimepicker/h;->HF:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/datetimepicker/date/b;->Ij:Ljava/lang/String;

    .line 229
    sget v6, Lcom/android/datetimepicker/h;->HI:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/datetimepicker/date/b;->Ik:Ljava/lang/String;

    .line 230
    sget v6, Lcom/android/datetimepicker/h;->HK:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/datetimepicker/date/b;->Il:Ljava/lang/String;

    .line 231
    sget v6, Lcom/android/datetimepicker/h;->HJ:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->Im:Ljava/lang/String;

    .line 233
    sget v0, Lcom/android/datetimepicker/f;->Hv:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->HR:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    .line 234
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HR:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v6, p0, Lcom/android/datetimepicker/date/b;->HX:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v0, v6}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    .line 235
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HR:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v6, p0, Lcom/android/datetimepicker/date/b;->HY:Lcom/android/datetimepicker/date/q;

    invoke-virtual {v0, v6}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->addView(Landroid/view/View;)V

    .line 236
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HR:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    iget-object v6, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->d(J)V

    .line 238
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 239
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 240
    iget-object v6, p0, Lcom/android/datetimepicker/date/b;->HR:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v6, v0}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 242
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 243
    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 244
    iget-object v6, p0, Lcom/android/datetimepicker/date/b;->HR:Lcom/android/datetimepicker/date/AccessibleDateAnimator;

    invoke-virtual {v6, v0}, Lcom/android/datetimepicker/date/AccessibleDateAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 246
    sget v0, Lcom/android/datetimepicker/f;->HB:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->HZ:Landroid/widget/Button;

    .line 247
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HZ:Landroid/widget/Button;

    new-instance v6, Lcom/android/datetimepicker/date/c;

    invoke-direct {v6, p0}, Lcom/android/datetimepicker/date/c;-><init>(Lcom/android/datetimepicker/date/b;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/datetimepicker/date/b;->O(Z)V

    .line 261
    invoke-direct {p0, v1}, Lcom/android/datetimepicker/date/b;->aF(I)V

    .line 263
    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    .line 264
    if-nez v1, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HX:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v0, v3}, Lcom/android/datetimepicker/date/f;->aG(I)V

    .line 271
    :cond_0
    :goto_1
    new-instance v0, Lcom/android/datetimepicker/a;

    invoke-direct {v0, v5}, Lcom/android/datetimepicker/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/datetimepicker/date/b;->Ih:Lcom/android/datetimepicker/a;

    .line 272
    return-object v4

    .line 266
    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HY:Lcom/android/datetimepicker/date/q;

    invoke-virtual {v0, v3, v2}, Lcom/android/datetimepicker/date/q;->z(II)V

    goto :goto_1

    :cond_2
    move v3, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_0
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 284
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->Ih:Lcom/android/datetimepicker/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/a;->stop()V

    .line 285
    return-void
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 278
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->Ih:Lcom/android/datetimepicker/a;

    invoke-virtual {v0}, Lcom/android/datetimepicker/a;->start()V

    .line 279
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 177
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 178
    const-string v0, "year"

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 179
    const-string v0, "month"

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    const-string v0, "day"

    iget-object v1, p0, Lcom/android/datetimepicker/date/b;->HO:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    const-string v0, "week_start"

    iget v1, p0, Lcom/android/datetimepicker/date/b;->Ib:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v0, "year_start"

    iget v1, p0, Lcom/android/datetimepicker/date/b;->Ic:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const-string v0, "year_end"

    iget v1, p0, Lcom/android/datetimepicker/date/b;->Id:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    const-string v0, "current_view"

    iget v1, p0, Lcom/android/datetimepicker/date/b;->Ia:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    const/4 v0, -0x1

    .line 186
    iget v1, p0, Lcom/android/datetimepicker/date/b;->Ia:I

    if-nez v1, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HX:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/f;->gp()I

    move-result v0

    .line 192
    :cond_0
    :goto_0
    const-string v1, "list_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    return-void

    .line 188
    :cond_1
    iget v1, p0, Lcom/android/datetimepicker/date/b;->Ia:I

    if-ne v1, v3, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HY:Lcom/android/datetimepicker/date/q;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/q;->getFirstVisiblePosition()I

    move-result v0

    .line 190
    const-string v1, "list_position_offset"

    iget-object v2, p0, Lcom/android/datetimepicker/date/b;->HY:Lcom/android/datetimepicker/date/q;

    invoke-virtual {v2}, Lcom/android/datetimepicker/date/q;->gw()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final setFirstDayOfWeek(I)V
    .locals 2

    .prologue
    .line 360
    if-lez p1, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be between Calendar.SUNDAY and Calendar.SATURDAY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    iput p1, p0, Lcom/android/datetimepicker/date/b;->Ib:I

    .line 365
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HX:Lcom/android/datetimepicker/date/f;

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/android/datetimepicker/date/b;->HX:Lcom/android/datetimepicker/date/f;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/f;->gn()V

    .line 368
    :cond_2
    return-void
.end method
