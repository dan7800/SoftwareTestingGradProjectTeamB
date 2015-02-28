.class public Lcom/google/android/mail/common/html/parser/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/mail/common/html/parser/s",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final cuX:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/mail/common/html/parser/HTML$Element;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

.field private cuZ:I

.field private cva:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 880
    sget-object v0, Lcom/google/android/mail/common/html/parser/b;->crk:Lcom/google/android/mail/common/html/parser/HTML$Element;

    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->cqk:Lcom/google/android/mail/common/html/parser/HTML$Element;

    sget-object v2, Lcom/google/android/mail/common/html/parser/b;->crm:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/html/parser/u;->cuX:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 886
    new-instance v0, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-direct {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;-><init>()V

    iput-object v0, p0, Lcom/google/android/mail/common/html/parser/u;->cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    .line 888
    iput v1, p0, Lcom/google/android/mail/common/html/parser/u;->cuZ:I

    .line 889
    iput v1, p0, Lcom/google/android/mail/common/html/parser/u;->cva:I

    return-void
.end method


# virtual methods
.method public final AS()I
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/u;->cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->Wp()I

    move-result v0

    return v0
.end method

.method public final Wo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/u;->cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/mail/common/html/parser/i;II)V
    .locals 3

    .prologue
    .line 893
    instance-of v0, p1, Lcom/google/android/mail/common/html/parser/k;

    if-eqz v0, :cond_2

    .line 895
    check-cast p1, Lcom/google/android/mail/common/html/parser/k;

    .line 896
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/k;->getText()Ljava/lang/String;

    move-result-object v0

    .line 898
    iget v1, p0, Lcom/google/android/mail/common/html/parser/u;->cuZ:I

    if-lez v1, :cond_1

    .line 899
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/u;->cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->gQ(Ljava/lang/String;)V

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    iget v1, p0, Lcom/google/android/mail/common/html/parser/u;->cva:I

    if-gtz v1, :cond_0

    .line 904
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/u;->cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->gP(Ljava/lang/String;)V

    goto :goto_0

    .line 907
    :cond_2
    instance-of v0, p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    if-eqz v0, :cond_8

    .line 910
    check-cast p1, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;

    .line 911
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/HtmlDocument$Tag;->Wf()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 913
    sget-object v1, Lcom/google/android/mail/common/html/parser/u;->cuX:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 914
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/u;->cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->cvh:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->a(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    .line 930
    :cond_3
    :goto_1
    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->cqk:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 931
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/u;->cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->Wq()V

    goto :goto_0

    .line 916
    :cond_4
    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->cqm:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 918
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/u;->cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v1}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->Ws()V

    goto :goto_1

    .line 920
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->Wc()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 922
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/u;->cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->cvg:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->a(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    .line 924
    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->cqO:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 925
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/u;->cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    const-string v2, "________________________________"

    invoke-virtual {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->gP(Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/u;->cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->cvg:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->a(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    goto :goto_1

    .line 933
    :cond_6
    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->crm:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 934
    iget v0, p0, Lcom/google/android/mail/common/html/parser/u;->cuZ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mail/common/html/parser/u;->cuZ:I

    goto :goto_0

    .line 935
    :cond_7
    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->crw:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    iget v0, p0, Lcom/google/android/mail/common/html/parser/u;->cva:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mail/common/html/parser/u;->cva:I

    goto/16 :goto_0

    .line 939
    :cond_8
    instance-of v0, p1, Lcom/google/android/mail/common/html/parser/g;

    if-eqz v0, :cond_0

    .line 942
    check-cast p1, Lcom/google/android/mail/common/html/parser/g;

    .line 943
    invoke-virtual {p1}, Lcom/google/android/mail/common/html/parser/g;->Wf()Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    .line 945
    sget-object v1, Lcom/google/android/mail/common/html/parser/u;->cuX:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 946
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/u;->cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->cvh:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->a(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    .line 953
    :cond_9
    :goto_2
    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->cqk:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 954
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/u;->cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->Wr()V

    goto/16 :goto_0

    .line 948
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->Wc()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 950
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/u;->cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    sget-object v2, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;->cvg:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;

    invoke-virtual {v1, v2}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->a(Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter$Separator;)V

    goto :goto_2

    .line 956
    :cond_b
    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->crm:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 957
    iget v0, p0, Lcom/google/android/mail/common/html/parser/u;->cuZ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/mail/common/html/parser/u;->cuZ:I

    goto/16 :goto_0

    .line 958
    :cond_c
    sget-object v1, Lcom/google/android/mail/common/html/parser/b;->crw:Lcom/google/android/mail/common/html/parser/HTML$Element;

    invoke-virtual {v1, v0}, Lcom/google/android/mail/common/html/parser/HTML$Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    iget v0, p0, Lcom/google/android/mail/common/html/parser/u;->cva:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/mail/common/html/parser/u;->cva:I

    goto/16 :goto_0
.end method

.method public final synthetic getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/u;->cuY:Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;

    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextPrinter;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
