.class public final Lcom/google/api/client/http/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cwQ:Lcom/google/api/client/http/l;

.field private cwl:Lcom/google/api/client/util/F;

.field private final cwo:Lcom/google/api/client/http/A;

.field private cwr:Ljava/lang/String;

.field private cxd:Lcom/google/api/client/http/n;

.field private cxe:Lcom/google/api/client/http/o;

.field private cxf:Lcom/google/api/client/http/o;

.field private cxg:I

.field private cxh:I

.field private cxi:Z

.field private cxj:Z

.field private cxk:Lcom/google/api/client/http/k;

.field private cxl:Lcom/google/api/client/http/j;

.field private cxm:I

.field private cxn:I

.field private cxo:Lcom/google/api/client/http/B;

.field private cxp:Lcom/google/api/client/http/r;

.field private cxq:Lcom/google/api/client/http/y;

.field private cxr:Lcom/google/api/client/http/c;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private cxs:Z

.field private cxt:Z

.field private cxu:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private cxv:Z

.field private cxw:Lcom/google/api/client/util/I;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/A;)V
    .locals 3

    .prologue
    const/16 v2, 0x4e20

    const/4 v1, 0x1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/google/api/client/http/o;

    invoke-direct {v0}, Lcom/google/api/client/http/o;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/t;->cxe:Lcom/google/api/client/http/o;

    .line 92
    new-instance v0, Lcom/google/api/client/http/o;

    invoke-direct {v0}, Lcom/google/api/client/http/o;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/t;->cxf:Lcom/google/api/client/http/o;

    .line 100
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/api/client/http/t;->cxg:I

    .line 122
    const/16 v0, 0x4000

    iput v0, p0, Lcom/google/api/client/http/t;->cxh:I

    .line 125
    iput-boolean v1, p0, Lcom/google/api/client/http/t;->cxi:Z

    .line 128
    iput-boolean v1, p0, Lcom/google/api/client/http/t;->cxj:Z

    .line 143
    iput v2, p0, Lcom/google/api/client/http/t;->cxm:I

    .line 149
    iput v2, p0, Lcom/google/api/client/http/t;->cxn:I

    .line 175
    iput-boolean v1, p0, Lcom/google/api/client/http/t;->cxs:Z

    .line 181
    iput-boolean v1, p0, Lcom/google/api/client/http/t;->cxt:Z

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/client/http/t;->cxu:Z

    .line 201
    sget-object v0, Lcom/google/api/client/util/I;->czF:Lcom/google/api/client/util/I;

    iput-object v0, p0, Lcom/google/api/client/http/t;->cxw:Lcom/google/api/client/util/I;

    .line 208
    iput-object p1, p0, Lcom/google/api/client/http/t;->cwo:Lcom/google/api/client/http/A;

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/t;->hp(Ljava/lang/String;)Lcom/google/api/client/http/t;

    .line 210
    return-void
.end method


# virtual methods
.method public final XA()Lcom/google/api/client/http/k;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/api/client/http/t;->cxk:Lcom/google/api/client/http/k;

    return-object v0
.end method

.method public final XB()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/google/api/client/http/t;->cxh:I

    return v0
.end method

.method public final XC()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/google/api/client/http/t;->cxi:Z

    return v0
.end method

.method public final XD()Lcom/google/api/client/http/o;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/api/client/http/t;->cxe:Lcom/google/api/client/http/o;

    return-object v0
.end method

.method public final XE()Lcom/google/api/client/http/o;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/api/client/http/t;->cxf:Lcom/google/api/client/http/o;

    return-object v0
.end method

.method public final XF()Lcom/google/api/client/http/B;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/api/client/http/t;->cxo:Lcom/google/api/client/http/B;

    return-object v0
.end method

.method public final XG()Lcom/google/api/client/http/r;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/google/api/client/http/t;->cxp:Lcom/google/api/client/http/r;

    return-object v0
.end method

.method public final XH()Lcom/google/api/client/http/y;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/google/api/client/http/t;->cxq:Lcom/google/api/client/http/y;

    return-object v0
.end method

.method public final XI()I
    .locals 1

    .prologue
    .line 639
    iget v0, p0, Lcom/google/api/client/http/t;->cxg:I

    return v0
.end method

.method public final XJ()Lcom/google/api/client/http/t;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 655
    invoke-static {v0}, Lcom/google/api/client/util/H;->cp(Z)V

    .line 656
    iput v0, p0, Lcom/google/api/client/http/t;->cxg:I

    .line 657
    return-object p0
.end method

.method public final XK()Lcom/google/api/client/util/F;
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/api/client/http/t;->cwl:Lcom/google/api/client/util/F;

    return-object v0
.end method

.method public final XL()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/google/api/client/http/t;->cxt:Z

    return v0
.end method

.method public final XM()Lcom/google/api/client/http/t;
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/client/http/t;->cxt:Z

    .line 729
    return-object p0
.end method

.method public final XN()Lcom/google/api/client/http/w;
    .locals 22

    .prologue
    .line 834
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/api/client/http/t;->cxg:I

    if-ltz v2, :cond_12

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/api/client/util/H;->cp(Z)V

    .line 836
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/api/client/http/t;->cxg:I

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/api/client/http/t;->cxr:Lcom/google/api/client/http/c;

    if-eqz v2, :cond_0

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/api/client/http/t;->cxr:Lcom/google/api/client/http/c;

    invoke-interface {v2}, Lcom/google/api/client/http/c;->reset()V

    .line 841
    :cond_0
    const/4 v2, 0x0

    .line 844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/api/client/http/t;->cwr:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/api/client/http/t;->cxl:Lcom/google/api/client/http/j;

    invoke-static {v4}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v3

    .line 849
    :goto_1
    if-eqz v2, :cond_1

    .line 850
    invoke-virtual {v2}, Lcom/google/api/client/http/w;->ignore()V

    .line 853
    :cond_1
    const/4 v8, 0x0

    .line 854
    const/4 v7, 0x0

    .line 857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/api/client/http/t;->cxd:Lcom/google/api/client/http/n;

    if-eqz v2, :cond_2

    .line 858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/api/client/http/t;->cxd:Lcom/google/api/client/http/n;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/google/api/client/http/n;->b(Lcom/google/api/client/http/t;)V

    .line 861
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/api/client/http/t;->cxl:Lcom/google/api/client/http/j;

    invoke-virtual {v2}, Lcom/google/api/client/http/j;->Xn()Ljava/lang/String;

    move-result-object v14

    .line 862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/api/client/http/t;->cwo:Lcom/google/api/client/http/A;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/api/client/http/t;->cwr:Ljava/lang/String;

    invoke-virtual {v2, v3, v14}, Lcom/google/api/client/http/A;->az(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/D;

    move-result-object v15

    .line 863
    sget-object v16, Lcom/google/api/client/http/A;->cwd:Ljava/util/logging/Logger;

    .line 864
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/api/client/http/t;->cxi:Z

    if-eqz v2, :cond_13

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    move v13, v2

    .line 865
    :goto_2
    const/4 v3, 0x0

    .line 866
    const/4 v2, 0x0

    .line 868
    if-eqz v13, :cond_3

    .line 869
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    const-string v4, "-------------- REQUEST  --------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/google/api/client/util/L;->czG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/api/client/http/t;->cwr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/google/api/client/util/L;->czG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/api/client/http/t;->cxj:Z

    if-eqz v4, :cond_3

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "curl -v --compressed"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/api/client/http/t;->cwr:Ljava/lang/String;

    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 878
    const-string v4, " -X "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cwr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/api/client/http/t;->cxe:Lcom/google/api/client/http/o;

    invoke-virtual {v4}, Lcom/google/api/client/http/o;->Xv()Ljava/lang/String;

    move-result-object v4

    .line 884
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/api/client/http/t;->cxv:Z

    if-nez v5, :cond_4

    .line 885
    if-nez v4, :cond_14

    .line 886
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cxe:Lcom/google/api/client/http/o;

    const-string v9, "Google-HTTP-Java-Client/1.16.0-rc (gzip)"

    invoke-virtual {v5, v9}, Lcom/google/api/client/http/o;->hm(Ljava/lang/String;)Lcom/google/api/client/http/o;

    .line 892
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cxe:Lcom/google/api/client/http/o;

    move-object/from16 v0, v16

    invoke-static {v5, v3, v2, v0, v15}, Lcom/google/api/client/http/o;->a(Lcom/google/api/client/http/o;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/D;)V

    .line 893
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/api/client/http/t;->cxv:Z

    if-nez v5, :cond_5

    .line 895
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cxe:Lcom/google/api/client/http/o;

    invoke-virtual {v5, v4}, Lcom/google/api/client/http/o;->hm(Ljava/lang/String;)Lcom/google/api/client/http/o;

    .line 899
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cxk:Lcom/google/api/client/http/k;

    .line 900
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/api/client/http/t;->cxk:Lcom/google/api/client/http/k;

    invoke-interface {v4}, Lcom/google/api/client/http/k;->Xk()Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_6
    const/4 v4, 0x1

    move v12, v4

    .line 901
    :goto_4
    if-eqz v5, :cond_a

    .line 904
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/api/client/http/t;->cxk:Lcom/google/api/client/http/k;

    invoke-interface {v4}, Lcom/google/api/client/http/k;->getType()Ljava/lang/String;

    move-result-object v17

    .line 906
    if-eqz v13, :cond_24

    .line 907
    new-instance v4, Lcom/google/api/client/util/B;

    sget-object v9, Lcom/google/api/client/http/A;->cwd:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/api/client/http/t;->cxh:I

    invoke-direct {v4, v5, v9, v10, v11}, Lcom/google/api/client/util/B;-><init>(Lcom/google/api/client/util/K;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    .line 911
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cwQ:Lcom/google/api/client/http/l;

    if-nez v5, :cond_16

    .line 912
    const/4 v5, 0x0

    .line 913
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/api/client/http/t;->cxk:Lcom/google/api/client/http/k;

    invoke-interface {v9}, Lcom/google/api/client/http/k;->getLength()J

    move-result-wide v10

    move-object/from16 v20, v5

    move-object v5, v4

    move-object/from16 v4, v20

    .line 920
    :goto_6
    if-eqz v13, :cond_8

    .line 921
    if-eqz v17, :cond_7

    .line 922
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v18, "Content-Type: "

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 923
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/google/api/client/util/L;->czG:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    if-eqz v2, :cond_7

    .line 925
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, " -H \'"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v18, "\'"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    :cond_7
    const-wide/16 v18, 0x0

    cmp-long v9, v10, v18

    if-ltz v9, :cond_8

    .line 929
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v18, "Content-Length: "

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 930
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v18, Lcom/google/api/client/util/L;->czG:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    :cond_8
    if-eqz v2, :cond_9

    .line 935
    const-string v9, " -d \'@-\'"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/api/client/http/D;->setContentType(Ljava/lang/String;)V

    .line 939
    invoke-virtual {v15, v4}, Lcom/google/api/client/http/D;->setContentEncoding(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v15, v10, v11}, Lcom/google/api/client/http/D;->setContentLength(J)V

    .line 941
    invoke-virtual {v15, v5}, Lcom/google/api/client/http/D;->a(Lcom/google/api/client/util/K;)V

    .line 944
    :cond_a
    if-eqz v13, :cond_c

    .line 945
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 946
    if-eqz v2, :cond_c

    .line 947
    const-string v3, " -- \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    const-string v3, "\'"

    const-string v4, "\'\"\'\"\'"

    invoke-virtual {v14, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    if-eqz v5, :cond_b

    .line 951
    const-string v3, " << $$$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 959
    :cond_c
    if-eqz v12, :cond_18

    if-lez v6, :cond_18

    const/4 v2, 0x1

    .line 962
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/api/client/http/t;->cxm:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/api/client/http/t;->cxn:I

    invoke-virtual {v15, v3, v4}, Lcom/google/api/client/http/D;->aj(II)V

    .line 964
    :try_start_0
    invoke-virtual {v15}, Lcom/google/api/client/http/D;->Xw()Lcom/google/api/client/http/E;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 966
    :try_start_1
    new-instance v4, Lcom/google/api/client/http/w;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/google/api/client/http/w;-><init>(Lcom/google/api/client/http/t;Lcom/google/api/client/http/E;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 987
    :goto_8
    if-eqz v4, :cond_1d

    :try_start_2
    invoke-virtual {v4}, Lcom/google/api/client/http/w;->XO()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 990
    const/4 v3, 0x0

    .line 991
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cxo:Lcom/google/api/client/http/B;

    if-eqz v5, :cond_d

    .line 995
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/api/client/http/t;->cxo:Lcom/google/api/client/http/B;

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v4, v2}, Lcom/google/api/client/http/B;->a(Lcom/google/api/client/http/t;Lcom/google/api/client/http/w;Z)Z

    move-result v3

    .line 997
    :cond_d
    if-nez v3, :cond_f

    .line 998
    invoke-virtual {v4}, Lcom/google/api/client/http/w;->getStatusCode()I

    move-result v8

    invoke-virtual {v4}, Lcom/google/api/client/http/w;->XD()Lcom/google/api/client/http/o;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/client/http/o;->getLocation()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/google/api/client/http/t;->cxs:Z

    if-eqz v5, :cond_1b

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    const/4 v5, 0x0

    :goto_9
    if-eqz v5, :cond_1b

    if-eqz v9, :cond_1b

    new-instance v5, Lcom/google/api/client/http/j;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/api/client/http/t;->cxl:Lcom/google/api/client/http/j;

    invoke-virtual {v10, v9}, Lcom/google/api/client/http/j;->hd(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/google/api/client/http/j;-><init>(Ljava/net/URL;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/api/client/http/t;->e(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/t;

    const/16 v5, 0x12f

    if-ne v8, v5, :cond_e

    const-string v5, "GET"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/api/client/http/t;->hp(Ljava/lang/String;)Lcom/google/api/client/http/t;

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cxe:Lcom/google/api/client/http/o;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/google/api/client/http/o;->hh(Ljava/lang/String;)Lcom/google/api/client/http/o;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cxe:Lcom/google/api/client/http/o;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/google/api/client/http/o;->hl(Ljava/lang/String;)Lcom/google/api/client/http/o;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cxe:Lcom/google/api/client/http/o;

    invoke-virtual {v5}, Lcom/google/api/client/http/o;->Xr()Lcom/google/api/client/http/o;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cxe:Lcom/google/api/client/http/o;

    invoke-virtual {v5}, Lcom/google/api/client/http/o;->Xq()Lcom/google/api/client/http/o;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cxe:Lcom/google/api/client/http/o;

    invoke-virtual {v5}, Lcom/google/api/client/http/o;->Xs()Lcom/google/api/client/http/o;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cxe:Lcom/google/api/client/http/o;

    invoke-virtual {v5}, Lcom/google/api/client/http/o;->Xt()Lcom/google/api/client/http/o;

    const/4 v5, 0x1

    :goto_a
    if-eqz v5, :cond_1c

    .line 1000
    const/4 v3, 0x1

    .line 1018
    :cond_f
    :goto_b
    and-int/2addr v2, v3

    .line 1020
    if-eqz v2, :cond_10

    .line 1021
    invoke-virtual {v4}, Lcom/google/api/client/http/w;->ignore()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1029
    :cond_10
    :goto_c
    add-int/lit8 v3, v6, -0x1

    .line 1031
    if-eqz v4, :cond_11

    .line 1037
    :cond_11
    if-nez v2, :cond_23

    .line 1039
    if-nez v4, :cond_20

    .line 1041
    throw v7

    .line 834
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 864
    :cond_13
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_2

    .line 888
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cxe:Lcom/google/api/client/http/o;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Google-HTTP-Java-Client/1.16.0-rc (gzip)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/google/api/client/http/o;->hm(Ljava/lang/String;)Lcom/google/api/client/http/o;

    goto/16 :goto_3

    .line 900
    :cond_15
    const/4 v4, 0x0

    move v12, v4

    goto/16 :goto_4

    .line 915
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cwQ:Lcom/google/api/client/http/l;

    invoke-interface {v5}, Lcom/google/api/client/http/l;->getName()Ljava/lang/String;

    move-result-object v9

    .line 916
    new-instance v10, Lcom/google/api/client/http/m;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cwQ:Lcom/google/api/client/http/l;

    invoke-direct {v10, v4, v5}, Lcom/google/api/client/http/m;-><init>(Lcom/google/api/client/util/K;Lcom/google/api/client/http/l;)V

    .line 917
    if-eqz v12, :cond_17

    invoke-static {v10}, Lcom/google/api/client/util/w;->b(Lcom/google/api/client/util/K;)J

    move-result-wide v4

    move-wide/from16 v20, v4

    move-object v4, v9

    move-object v5, v10

    move-wide/from16 v10, v20

    goto/16 :goto_6

    :cond_17
    const-wide/16 v4, -0x1

    move-wide/from16 v20, v4

    move-object v4, v9

    move-object v5, v10

    move-wide/from16 v10, v20

    goto/16 :goto_6

    .line 959
    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 972
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v5}, Lcom/google/api/client/http/E;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 983
    :catch_0
    move-exception v3

    .line 976
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/api/client/http/t;->cxu:Z

    if-nez v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/api/client/http/t;->cxp:Lcom/google/api/client/http/r;

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/api/client/http/t;->cxp:Lcom/google/api/client/http/r;

    move-object/from16 v0, p0

    invoke-interface {v4, v0, v2}, Lcom/google/api/client/http/r;->a(Lcom/google/api/client/http/t;Z)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 978
    :cond_19
    throw v3

    .line 982
    :cond_1a
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "exception thrown while executing request"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v7, v3

    move-object v4, v8

    goto/16 :goto_8

    .line 998
    :pswitch_1
    const/4 v5, 0x1

    goto/16 :goto_9

    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 1001
    :cond_1c
    if-eqz v2, :cond_f

    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cxr:Lcom/google/api/client/http/c;

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cxr:Lcom/google/api/client/http/c;

    invoke-virtual {v4}, Lcom/google/api/client/http/w;->getStatusCode()I

    move-result v8

    invoke-interface {v5, v8}, Lcom/google/api/client/http/c;->eY(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1005
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/api/client/http/t;->cxr:Lcom/google/api/client/http/c;

    invoke-interface {v5}, Lcom/google/api/client/http/c;->WX()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v8

    .line 1006
    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_f

    .line 1008
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/api/client/http/t;->cxw:Lcom/google/api/client/util/I;

    invoke-interface {v3, v8, v9}, Lcom/google/api/client/util/I;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1012
    :goto_d
    const/4 v3, 0x1

    goto/16 :goto_b

    .line 1025
    :cond_1d
    if-nez v4, :cond_1e

    const/4 v3, 0x1

    :goto_e
    and-int/2addr v2, v3

    goto/16 :goto_c

    :cond_1e
    const/4 v3, 0x0

    goto :goto_e

    .line 1034
    :catchall_1
    move-exception v2

    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Lcom/google/api/client/http/w;->disconnect()V

    :cond_1f
    throw v2

    .line 1044
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/api/client/http/t;->cxq:Lcom/google/api/client/http/y;

    if-eqz v2, :cond_21

    .line 1045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/api/client/http/t;->cxq:Lcom/google/api/client/http/y;

    invoke-interface {v2, v4}, Lcom/google/api/client/http/y;->b(Lcom/google/api/client/http/w;)V

    .line 1048
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/api/client/http/t;->cxt:Z

    if-eqz v2, :cond_22

    invoke-virtual {v4}, Lcom/google/api/client/http/w;->XO()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1050
    :try_start_6
    new-instance v2, Lcom/google/api/client/http/HttpResponseException;

    invoke-direct {v2, v4}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/w;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1052
    :catchall_2
    move-exception v2

    invoke-virtual {v4}, Lcom/google/api/client/http/w;->disconnect()V

    throw v2

    .line 1055
    :cond_22
    return-object v4

    :catch_1
    move-exception v3

    goto :goto_d

    :cond_23
    move-object v2, v4

    move v6, v3

    goto/16 :goto_1

    :cond_24
    move-object v4, v5

    goto/16 :goto_5

    .line 998
    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final Xy()Lcom/google/api/client/http/A;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/api/client/http/t;->cwo:Lcom/google/api/client/http/A;

    return-object v0
.end method

.method public final Xz()Lcom/google/api/client/http/j;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/api/client/http/t;->cxl:Lcom/google/api/client/http/j;

    return-object v0
.end method

.method public final a(Lcom/google/api/client/http/B;)Lcom/google/api/client/http/t;
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/google/api/client/http/t;->cxo:Lcom/google/api/client/http/B;

    .line 584
    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/c;)Lcom/google/api/client/http/t;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 325
    iput-object p1, p0, Lcom/google/api/client/http/t;->cxr:Lcom/google/api/client/http/c;

    .line 326
    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/l;)Lcom/google/api/client/http/t;
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/api/client/http/t;->cwQ:Lcom/google/api/client/http/l;

    .line 295
    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/n;)Lcom/google/api/client/http/t;
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lcom/google/api/client/http/t;->cxd:Lcom/google/api/client/http/n;

    .line 564
    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/r;)Lcom/google/api/client/http/t;
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/google/api/client/http/t;->cxp:Lcom/google/api/client/http/r;

    .line 607
    return-object p0
.end method

.method public final a(Lcom/google/api/client/http/y;)Lcom/google/api/client/http/t;
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/google/api/client/http/t;->cxq:Lcom/google/api/client/http/y;

    .line 626
    return-object p0
.end method

.method public final a(Lcom/google/api/client/util/F;)Lcom/google/api/client/http/t;
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lcom/google/api/client/http/t;->cwl:Lcom/google/api/client/util/F;

    .line 672
    return-object p0
.end method

.method public final b(Lcom/google/api/client/http/k;)Lcom/google/api/client/http/t;
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/api/client/http/t;->cxk:Lcom/google/api/client/http/k;

    .line 276
    return-object p0
.end method

.method public final e(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/t;
    .locals 1

    .prologue
    .line 256
    invoke-static {p1}, Lcom/google/api/client/a/a/a/a/a/a;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/j;

    iput-object v0, p0, Lcom/google/api/client/http/t;->cxl:Lcom/google/api/client/http/j;

    .line 257
    return-object p0
.end method

.method public final eZ(I)Lcom/google/api/client/http/t;
    .locals 1

    .prologue
    .line 455
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/H;->cp(Z)V

    .line 456
    iput p1, p0, Lcom/google/api/client/http/t;->cxm:I

    .line 457
    return-object p0

    .line 455
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final fa(I)Lcom/google/api/client/http/t;
    .locals 1

    .prologue
    .line 481
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/H;->cp(Z)V

    .line 482
    iput p1, p0, Lcom/google/api/client/http/t;->cxn:I

    .line 483
    return-object p0

    .line 481
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/api/client/http/t;->cwr:Ljava/lang/String;

    return-object v0
.end method

.method public final hp(Ljava/lang/String;)Lcom/google/api/client/http/t;
    .locals 1

    .prologue
    .line 236
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/api/client/http/s;->ho(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/H;->cp(Z)V

    .line 237
    iput-object p1, p0, Lcom/google/api/client/http/t;->cwr:Ljava/lang/String;

    .line 238
    return-object p0

    .line 236
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
