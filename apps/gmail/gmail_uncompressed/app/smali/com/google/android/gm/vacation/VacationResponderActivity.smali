.class public Lcom/google/android/gm/vacation/VacationResponderActivity;
.super Landroid/support/v7/app/g;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/google/android/gm/vacation/d;
.implements Lcom/google/android/gm/vacation/j;


# static fields
.field private static final mW:Ljava/lang/String;


# instance fields
.field private bhS:Ljava/lang/String;

.field private biv:Lcom/google/android/gm/provider/bH;

.field private brA:Landroid/widget/TextView;

.field private brB:Landroid/widget/EditText;

.field private brC:Landroid/widget/EditText;

.field private brD:Landroid/widget/CheckedTextView;

.field private brE:Landroid/widget/CheckedTextView;

.field private brF:Lcom/google/android/gm/vacation/a;

.field private brG:Lcom/google/android/gm/vacation/i;

.field private brH:Lcom/google/android/gm/vacation/h;

.field private brI:Lcom/google/android/gm/vacation/f;

.field private brJ:Lcom/google/android/gm/provider/bI;

.field private brK:Ljava/lang/Runnable;

.field private brp:Z

.field private brq:Z

.field private brr:Z

.field private brs:Landroid/text/format/Time;

.field private brt:Landroid/text/format/Time;

.field private bru:Landroid/text/format/Time;

.field private brv:Z

.field private brw:Landroid/widget/Switch;

.field private brx:Landroid/view/View;

.field private bry:Landroid/view/View;

.field private brz:Landroid/widget/TextView;

.field private mAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/vacation/VacationResponderActivity;->mW:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v7/app/g;-><init>()V

    .line 135
    new-instance v0, Lcom/google/android/gm/vacation/a;

    invoke-direct {v0, p0}, Lcom/google/android/gm/vacation/a;-><init>(Lcom/google/android/gm/vacation/d;)V

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brF:Lcom/google/android/gm/vacation/a;

    .line 428
    new-instance v0, Lcom/google/android/gm/vacation/g;

    invoke-direct {v0, p0}, Lcom/google/android/gm/vacation/g;-><init>(Lcom/google/android/gm/vacation/VacationResponderActivity;)V

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brK:Ljava/lang/Runnable;

    return-void
.end method

.method private IG()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 487
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brt:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 488
    iget-object v2, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 489
    iget-object v4, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brz:Landroid/widget/TextView;

    invoke-direct {p0, v4, v0, v1}, Lcom/google/android/gm/vacation/VacationResponderActivity;->a(Landroid/widget/TextView;J)V

    .line 490
    invoke-direct {p0, v2, v3}, Lcom/google/android/gm/vacation/VacationResponderActivity;->aW(J)V

    .line 491
    return-void
.end method

.method private IK()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brt:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 583
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v1, v1, 0x7

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 584
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    invoke-static {v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->b(Landroid/text/format/Time;)V

    .line 585
    return-void
.end method

.method private IL()V
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brI:Lcom/google/android/gm/vacation/f;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brI:Lcom/google/android/gm/vacation/f;

    invoke-virtual {v0}, Lcom/google/android/gm/vacation/f;->dismiss()V

    .line 599
    :cond_0
    invoke-static {}, Lcom/google/android/gm/vacation/f;->IF()Lcom/google/android/gm/vacation/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brI:Lcom/google/android/gm/vacation/f;

    .line 600
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brI:Lcom/google/android/gm/vacation/f;

    invoke-virtual {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "EmptySubjectAndBodyDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/vacation/f;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method static synthetic a(Lcom/google/android/gm/vacation/VacationResponderActivity;)Lcom/google/android/gm/provider/bI;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brJ:Lcom/google/android/gm/provider/bI;

    return-object v0
.end method

.method private static a(Landroid/text/format/Time;)V
    .locals 0

    .prologue
    .line 650
    invoke-virtual {p0}, Landroid/text/format/Time;->setToNow()V

    .line 651
    invoke-static {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->b(Landroid/text/format/Time;)V

    .line 652
    return-void
.end method

.method private a(Landroid/text/format/Time;Z)V
    .locals 4

    .prologue
    .line 540
    iput-boolean p2, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brq:Z

    .line 542
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brF:Lcom/google/android/gm/vacation/a;

    iget v1, p1, Landroid/text/format/Time;->year:I

    iget v2, p1, Landroid/text/format/Time;->month:I

    iget v3, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/vacation/a;->g(III)V

    .line 543
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brF:Lcom/google/android/gm/vacation/a;

    invoke-virtual {v0}, Lcom/google/android/gm/vacation/a;->IE()Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DatePickerDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method private a(Landroid/widget/CheckedTextView;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 478
    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 479
    iput-boolean v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brv:Z

    .line 480
    return-void

    .line 478
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;J)V
    .locals 2

    .prologue
    .line 494
    const v0, 0x10014

    invoke-static {p0, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    return-void
.end method

.method private aW(J)V
    .locals 3

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brr:Z

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brA:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gm/vacation/VacationResponderActivity;->a(Landroid/widget/TextView;J)V

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brA:Landroid/widget/TextView;

    const v1, 0x7f0901af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gm/vacation/VacationResponderActivity;)Lcom/google/android/gm/provider/bH;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    return-object v0
.end method

.method private static b(Landroid/text/format/Time;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 659
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 660
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 661
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 662
    return-void
.end method

.method static synthetic c(Lcom/google/android/gm/vacation/VacationResponderActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method private ef(I)Z
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    .line 352
    const v0, 0x7f0d0241

    if-ne p1, v0, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->IM()V

    :cond_0
    :goto_0
    move v0, v6

    .line 368
    :goto_1
    return v0

    .line 354
    :cond_1
    const v0, 0x7f0d0215

    if-ne p1, v0, :cond_6

    .line 355
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brB:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brC:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brw:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/google/android/gm/vacation/VacationResponderActivity;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->IL()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brv:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    new-instance v0, Lcom/google/android/gm/provider/bI;

    invoke-direct {v0}, Lcom/google/android/gm/provider/bI;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brJ:Lcom/google/android/gm/provider/bI;

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brw:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gm/provider/bH;->enabled:Z

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brt:Landroid/text/format/Time;

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gm/provider/bH;->bnr:J

    iget-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brr:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    iget v1, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gm/provider/bH;->bns:J

    :goto_2
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brB:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gm/provider/bH;->ayV:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brC:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iget-object v1, v1, Lcom/google/android/gm/provider/bH;->bnt:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iput-object v0, v1, Lcom/google/android/gm/provider/bH;->bnt:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brD:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gm/provider/bH;->bnp:Z

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brE:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gm/provider/bH;->bnq:Z

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brJ:Lcom/google/android/gm/provider/bI;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/bH;->a(Lcom/google/android/gm/provider/bI;)V

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brK:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_4
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "vacation_responder"

    const-string v2, "done"

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const v0, 0x7f0901b4

    invoke-direct {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->eg(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iput-wide v4, v0, Lcom/google/android/gm/provider/bH;->bns:J

    goto :goto_2

    .line 356
    :cond_6
    const v0, 0x7f0d023b

    if-ne p1, v0, :cond_7

    .line 357
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brt:Landroid/text/format/Time;

    invoke-direct {p0, v0, v6}, Lcom/google/android/gm/vacation/VacationResponderActivity;->a(Landroid/text/format/Time;Z)V

    goto/16 :goto_0

    .line 358
    :cond_7
    const v0, 0x7f0d023d

    if-ne p1, v0, :cond_9

    .line 359
    iget-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brr:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->IK()V

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v0, "EndDateDialog"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/vacation/i;

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brG:Lcom/google/android/gm/vacation/i;

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brG:Lcom/google/android/gm/vacation/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    invoke-virtual {v0, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    const v0, 0x10014

    invoke-static {p0, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/vacation/i;->fw(Ljava/lang/String;)Lcom/google/android/gm/vacation/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brG:Lcom/google/android/gm/vacation/i;

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brG:Lcom/google/android/gm/vacation/i;

    const-string v2, "EndDateDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/vacation/i;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 360
    :cond_9
    const v0, 0x7f0d023f

    if-ne p1, v0, :cond_a

    .line 361
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brD:Landroid/widget/CheckedTextView;

    invoke-direct {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->a(Landroid/widget/CheckedTextView;)V

    goto/16 :goto_0

    .line 362
    :cond_a
    const v0, 0x7f0d0240

    if-ne p1, v0, :cond_b

    .line 363
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brE:Landroid/widget/CheckedTextView;

    invoke-direct {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->a(Landroid/widget/CheckedTextView;)V

    goto/16 :goto_0

    .line 365
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private eg(I)V
    .locals 2

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brv:Z

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {p0, p1}, Lcom/google/android/gm/vacation/VacationResponderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->finish()V

    .line 625
    return-void
.end method

.method private static w(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 385
    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final IH()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 520
    iput-boolean v2, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brr:Z

    .line 521
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/vacation/VacationResponderActivity;->aW(J)V

    .line 522
    iput-boolean v2, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brv:Z

    .line 523
    return-void
.end method

.method public final II()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/vacation/VacationResponderActivity;->a(Landroid/text/format/Time;Z)V

    .line 528
    return-void
.end method

.method public final IJ()V
    .locals 2

    .prologue
    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brr:Z

    .line 533
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/vacation/VacationResponderActivity;->aW(J)V

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brv:Z

    .line 535
    return-void
.end method

.method public final IM()V
    .locals 6

    .prologue
    .line 614
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    const-string v1, "vacation_responder"

    const-string v2, "discard"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/mail/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 615
    const v0, 0x7f0901b5

    invoke-direct {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->eg(I)V

    .line 616
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brv:Z

    .line 642
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 632
    return-void
.end method

.method public final i(III)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 548
    sget-object v0, Lcom/google/android/gm/vacation/VacationResponderActivity;->mW:Ljava/lang/String;

    const-string v1, "onDateSet: %s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 550
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brt:Landroid/text/format/Time;

    .line 551
    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    .line 553
    iget-boolean v2, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brq:Z

    if-eqz v2, :cond_1

    .line 555
    iput p1, v0, Landroid/text/format/Time;->year:I

    .line 556
    iput p2, v0, Landroid/text/format/Time;->month:I

    .line 557
    iput p3, v0, Landroid/text/format/Time;->monthDay:I

    .line 558
    invoke-static {v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->b(Landroid/text/format/Time;)V

    .line 560
    invoke-virtual {v1, v0}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    invoke-virtual {v1, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 576
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->IG()V

    .line 578
    iput-boolean v5, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brv:Z

    .line 579
    return-void

    .line 564
    :cond_1
    iput-boolean v5, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brr:Z

    .line 566
    iput p1, v1, Landroid/text/format/Time;->year:I

    .line 567
    iput p2, v1, Landroid/text/format/Time;->month:I

    .line 568
    iput p3, v1, Landroid/text/format/Time;->monthDay:I

    .line 569
    invoke-static {v1}, Lcom/google/android/gm/vacation/VacationResponderActivity;->b(Landroid/text/format/Time;)V

    .line 571
    invoke-virtual {v1, v0}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brv:Z

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brH:Lcom/google/android/gm/vacation/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brH:Lcom/google/android/gm/vacation/h;

    invoke-virtual {v0}, Lcom/google/android/gm/vacation/h;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/google/android/gm/vacation/h;->IN()Lcom/google/android/gm/vacation/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brH:Lcom/google/android/gm/vacation/h;

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brH:Lcom/google/android/gm/vacation/h;

    invoke-virtual {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DiscardDialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/vacation/h;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/g;->onBackPressed()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 439
    if-eqz p2, :cond_3

    .line 441
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brB:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brC:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 443
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brw:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 445
    invoke-direct {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->IL()V

    .line 460
    :goto_0
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brt:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brs:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brt:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brs:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brt:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    invoke-direct {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->IK()V

    .line 456
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->IG()V

    .line 459
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brv:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->ef(I)Z

    .line 349
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const v0, 0x7f0400c4

    invoke-virtual {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->setContentView(I)V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 152
    invoke-static {v3}, Lcom/android/mail/utils/ag;->b(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brp:Z

    .line 154
    invoke-virtual {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "account_key"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->mAccount:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->mAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->eO(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->GB()Lcom/google/android/gm/provider/bH;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    .line 157
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailEngine;->Fr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bhS:Ljava/lang/String;

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->cF()Landroid/support/v7/app/a;

    move-result-object v4

    iget-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brp:Z

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Landroid/support/v7/app/a;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v5, 0x7f0400c5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0d0241

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0d0215

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4}, Landroid/support/v7/app/a;->cC()V

    invoke-virtual {v4}, Landroid/support/v7/app/a;->cA()V

    invoke-virtual {v4, v2}, Landroid/support/v7/app/a;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v4}, Landroid/support/v7/app/a;->cB()V

    new-instance v5, Landroid/support/v7/app/b;

    invoke-direct {v5, v7, v7}, Landroid/support/v7/app/b;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/support/v7/app/a;->a(Landroid/view/View;Landroid/support/v7/app/b;)V

    .line 160
    :goto_1
    const v0, 0x7f0d023a

    invoke-virtual {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brw:Landroid/widget/Switch;

    const v0, 0x7f0d023b

    invoke-virtual {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brx:Landroid/view/View;

    const v0, 0x7f0d023d

    invoke-virtual {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bry:Landroid/view/View;

    const v0, 0x7f0d023c

    invoke-virtual {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brz:Landroid/widget/TextView;

    const v0, 0x7f0d023e

    invoke-virtual {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brA:Landroid/widget/TextView;

    const v0, 0x7f0d0129

    invoke-virtual {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brB:Landroid/widget/EditText;

    const v0, 0x7f0d011b

    invoke-virtual {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brC:Landroid/widget/EditText;

    const v0, 0x7f0d023f

    invoke-virtual {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brD:Landroid/widget/CheckedTextView;

    const v0, 0x7f0d0240

    invoke-virtual {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brE:Landroid/widget/CheckedTextView;

    .line 163
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brs:Landroid/text/format/Time;

    .line 164
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brs:Landroid/text/format/Time;

    invoke-static {v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->a(Landroid/text/format/Time;)V

    .line 165
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brt:Landroid/text/format/Time;

    .line 166
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    .line 169
    if-eqz p1, :cond_3

    .line 170
    const-string v0, "start-date-selected"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brq:Z

    .line 171
    const-string v0, "end-date-set"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brr:Z

    .line 173
    const-string v0, "send-to-contacts-set"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 175
    iget-object v4, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brD:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 176
    const-string v0, "send-to-domain-set"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 178
    iget-object v4, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brE:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 180
    const-string v0, "start-date"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 181
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brt:Landroid/text/format/Time;

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 183
    const-string v0, "end-date"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 184
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 187
    invoke-virtual {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v4, "DatePickerDialog"

    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 189
    if-eqz v0, :cond_0

    .line 190
    iget-object v4, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brF:Lcom/google/android/gm/vacation/a;

    invoke-virtual {v4, v0}, Lcom/google/android/gm/vacation/a;->a(Landroid/app/DialogFragment;)V

    .line 222
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brw:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brx:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bry:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brB:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brC:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brD:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brE:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    invoke-direct {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->IG()V

    .line 225
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bhS:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brE:Landroid/widget/CheckedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 226
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 152
    goto/16 :goto_0

    .line 159
    :cond_2
    invoke-virtual {v4}, Landroid/support/v7/app/a;->cA()V

    const v0, 0x7f0901a8

    invoke-virtual {v4, v0}, Landroid/support/v7/app/a;->setTitle(I)V

    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/support/v7/app/a;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brw:Landroid/widget/Switch;

    iget-object v4, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iget-boolean v4, v4, Lcom/google/android/gm/provider/bH;->enabled:Z

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 195
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iget-wide v4, v0, Lcom/google/android/gm/provider/bH;->bnr:J

    .line 196
    cmp-long v0, v4, v8

    if-nez v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brt:Landroid/text/format/Time;

    invoke-static {v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->a(Landroid/text/format/Time;)V

    .line 202
    :goto_4
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iget-wide v4, v0, Lcom/google/android/gm/provider/bH;->bns:J

    .line 203
    cmp-long v0, v4, v8

    if-gtz v0, :cond_5

    .line 204
    invoke-direct {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->IK()V

    .line 205
    iput-boolean v2, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brr:Z

    .line 214
    :goto_5
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brB:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iget-object v4, v4, Lcom/google/android/gm/provider/bH;->ayV:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brC:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iget-object v4, v4, Lcom/google/android/gm/provider/bH;->bnt:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brD:Landroid/widget/CheckedTextView;

    iget-object v4, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iget-boolean v4, v4, Lcom/google/android/gm/provider/bH;->bnp:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 217
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brE:Landroid/widget/CheckedTextView;

    iget-object v4, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->biv:Lcom/google/android/gm/provider/bH;

    iget-boolean v4, v4, Lcom/google/android/gm/provider/bH;->bnq:Z

    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 219
    iput-boolean v2, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brv:Z

    goto/16 :goto_2

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brt:Landroid/text/format/Time;

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    goto :goto_4

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 210
    iget-object v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Landroid/text/format/Time;->monthDay:I

    .line 211
    iput-boolean v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brr:Z

    goto :goto_5

    .line 225
    :cond_6
    const v0, 0x7f0901ac

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bhS:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brE:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 333
    iget-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brp:Z

    if-nez v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100014

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 335
    const/4 v0, 0x1

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 343
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/vacation/VacationResponderActivity;->ef(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 248
    const-string v0, "changes-made"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brv:Z

    .line 249
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 230
    invoke-super {p0, p1}, Landroid/support/v7/app/g;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 232
    const-string v0, "start-date-selected"

    iget-boolean v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brq:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    const-string v0, "end-date-set"

    iget-boolean v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brr:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 234
    const-string v0, "changes-made"

    iget-boolean v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brv:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    const-string v0, "send-to-contacts-set"

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brD:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    const-string v0, "send-to-domain-set"

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brE:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 237
    const-string v0, "start-date"

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->brt:Landroid/text/format/Time;

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 238
    const-string v0, "end-date"

    iget-object v1, p0, Lcom/google/android/gm/vacation/VacationResponderActivity;->bru:Landroid/text/format/Time;

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 239
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 253
    invoke-super {p0}, Landroid/support/v7/app/g;->onStart()V

    .line 255
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->e(Landroid/app/Activity;)V

    .line 256
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Landroid/support/v7/app/g;->onStop()V

    .line 262
    invoke-static {}, Lcom/android/mail/a/a;->oq()Lcom/android/mail/a/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/mail/a/d;->f(Landroid/app/Activity;)V

    .line 263
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 637
    return-void
.end method
