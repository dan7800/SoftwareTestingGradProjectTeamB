.class final Lorg/owasp/html/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/owasp/html/h;


# instance fields
.field cKf:Lorg/owasp/html/j;

.field cKg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/owasp/html/j;",
            ">;"
        }
    .end annotation
.end field

.field cKh:I

.field cKi:Z

.field cKj:Z

.field final synthetic cKk:Ljava/lang/StringBuilder;

.field final synthetic cKl:Lorg/owasp/html/X;


# direct methods
.method constructor <init>(Lorg/owasp/html/X;Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lorg/owasp/html/Y;->cKl:Lorg/owasp/html/X;

    iput-object p2, p0, Lorg/owasp/html/Y;->cKk:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lorg/owasp/html/i;->cGH:Lorg/owasp/html/j;

    iput-object v0, p0, Lorg/owasp/html/Y;->cKf:Lorg/owasp/html/j;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/owasp/html/Y;->cKg:Ljava/util/List;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lorg/owasp/html/Y;->cKh:I

    return-void
.end method

.method private aci()V
    .locals 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/owasp/html/Y;->cKj:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/owasp/html/Y;->cKk:Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/owasp/html/Y;->cKj:Z

    .line 86
    :cond_0
    return-void
.end method

.method private iB(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/owasp/html/Y;->aci()V

    .line 76
    iget-boolean v0, p0, Lorg/owasp/html/Y;->cKi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/owasp/html/Y;->cKk:Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/Y;->cKk:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/owasp/html/Y;->cKi:Z

    .line 79
    return-void
.end method


# virtual methods
.method public final abA()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/owasp/html/Y;->aci()V

    .line 93
    return-void
.end method

.method public final abB()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/owasp/html/Y;->cKf:Lorg/owasp/html/j;

    sget-object v1, Lorg/owasp/html/i;->cGH:Lorg/owasp/html/j;

    if-eq v0, v1, :cond_0

    const-string v0, ")"

    invoke-direct {p0, v0}, Lorg/owasp/html/Y;->iB(Ljava/lang/String;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/Y;->cKg:Ljava/util/List;

    iget-object v1, p0, Lorg/owasp/html/Y;->cKg:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/owasp/html/j;

    iput-object v0, p0, Lorg/owasp/html/Y;->cKf:Lorg/owasp/html/j;

    .line 196
    return-void
.end method

.method public final abC()V
    .locals 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lorg/owasp/html/Y;->cKi:Z

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/owasp/html/Y;->cKk:Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/owasp/html/Y;->cKh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-direct {p0}, Lorg/owasp/html/Y;->aci()V

    goto :goto_0
.end method

.method public final if(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/owasp/html/Y;->cKg:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/owasp/html/Y;->cKg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/Y;->cKl:Lorg/owasp/html/X;

    invoke-static {v0}, Lorg/owasp/html/X;->a(Lorg/owasp/html/X;)Lorg/owasp/html/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/owasp/html/i;->im(Ljava/lang/String;)Lorg/owasp/html/j;

    move-result-object v0

    iput-object v0, p0, Lorg/owasp/html/Y;->cKf:Lorg/owasp/html/j;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/owasp/html/Y;->cKi:Z

    .line 99
    iget-object v0, p0, Lorg/owasp/html/Y;->cKk:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lorg/owasp/html/Y;->cKh:I

    .line 100
    iget-object v0, p0, Lorg/owasp/html/Y;->cKk:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lorg/owasp/html/Y;->cKk:Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    :cond_1
    iget-object v0, p0, Lorg/owasp/html/Y;->cKk:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    return-void
.end method

.method public final ig(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 143
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 145
    :goto_0
    iget-object v1, p0, Lorg/owasp/html/Y;->cKf:Lorg/owasp/html/j;

    iget v1, v1, Lorg/owasp/html/j;->cGM:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/owasp/html/Y;->cKf:Lorg/owasp/html/j;

    iget-object v0, v0, Lorg/owasp/html/j;->cGN:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :cond_0
    invoke-direct {p0, p1}, Lorg/owasp/html/Y;->iB(Ljava/lang/String;)V

    .line 150
    :cond_1
    return-void

    .line 143
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final ih(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    .line 162
    invoke-static {p1}, Lorg/owasp/html/W;->hL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lorg/owasp/html/Y;->cKf:Lorg/owasp/html/j;

    iget-object v1, v1, Lorg/owasp/html/j;->cGN:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    invoke-direct {p0, v0}, Lorg/owasp/html/Y;->iB(Ljava/lang/String;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lorg/owasp/html/Y;->cKf:Lorg/owasp/html/j;

    iget v1, v1, Lorg/owasp/html/j;->cGM:I

    and-int/lit8 v1, v1, 0x48

    const/16 v2, 0x48

    if-ne v1, v2, :cond_0

    .line 166
    iget-boolean v1, p0, Lorg/owasp/html/Y;->cKj:Z

    if-nez v1, :cond_3

    .line 167
    iput-boolean v3, p0, Lorg/owasp/html/Y;->cKj:Z

    .line 168
    iget-boolean v1, p0, Lorg/owasp/html/Y;->cKi:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/owasp/html/Y;->cKk:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    :cond_2
    iget-object v1, p0, Lorg/owasp/html/Y;->cKk:Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    iput-boolean v3, p0, Lorg/owasp/html/Y;->cKi:Z

    .line 174
    :goto_1
    iget-object v1, p0, Lorg/owasp/html/Y;->cKk:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/owasp/html/W;->hL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :cond_3
    iget-object v1, p0, Lorg/owasp/html/Y;->cKk:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final ii(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Lorg/owasp/html/Y;->aci()V

    .line 180
    iget-object v0, p0, Lorg/owasp/html/Y;->cKf:Lorg/owasp/html/j;

    iget v0, v0, Lorg/owasp/html/j;->cGM:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 181
    invoke-static {p1}, Lorg/owasp/html/W;->hL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/owasp/html/Y;->iB(Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method public final ij(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/owasp/html/Y;->aci()V

    .line 127
    iget-object v0, p0, Lorg/owasp/html/Y;->cKf:Lorg/owasp/html/j;

    iget v0, v0, Lorg/owasp/html/j;->cGM:I

    and-int/lit8 v0, v0, 0x50

    .line 130
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 131
    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lorg/owasp/html/X;->t(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p1}, Lorg/owasp/html/W;->hL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/owasp/html/Y;->iB(Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method

.method public final ik(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lorg/owasp/html/Y;->aci()V

    .line 154
    iget-object v0, p0, Lorg/owasp/html/Y;->cKf:Lorg/owasp/html/j;

    iget-object v0, v0, Lorg/owasp/html/j;->cGN:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0, p1}, Lorg/owasp/html/Y;->iB(Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method

.method public final il(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 107
    invoke-direct {p0}, Lorg/owasp/html/Y;->aci()V

    .line 108
    iget-object v0, p0, Lorg/owasp/html/Y;->cKg:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/owasp/html/Y;->cKg:Ljava/util/List;

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/owasp/html/Y;->cKg:Ljava/util/List;

    iget-object v1, p0, Lorg/owasp/html/Y;->cKf:Lorg/owasp/html/j;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-static {p1}, Lorg/owasp/html/W;->hL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    iget-object v0, p0, Lorg/owasp/html/Y;->cKf:Lorg/owasp/html/j;

    iget-object v0, v0, Lorg/owasp/html/j;->cGO:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/owasp/html/Y;->cKl:Lorg/owasp/html/X;

    invoke-static {v2}, Lorg/owasp/html/X;->a(Lorg/owasp/html/X;)Lorg/owasp/html/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/owasp/html/i;->im(Ljava/lang/String;)Lorg/owasp/html/j;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/owasp/html/Y;->cKf:Lorg/owasp/html/j;

    .line 115
    iget-object v0, p0, Lorg/owasp/html/Y;->cKf:Lorg/owasp/html/j;

    sget-object v2, Lorg/owasp/html/i;->cGH:Lorg/owasp/html/j;

    if-eq v0, v2, :cond_1

    .line 116
    invoke-direct {p0, v1}, Lorg/owasp/html/Y;->iB(Ljava/lang/String;)V

    .line 118
    :cond_1
    return-void

    .line 112
    :cond_2
    sget-object v0, Lorg/owasp/html/i;->cGH:Lorg/owasp/html/j;

    goto :goto_0
.end method
