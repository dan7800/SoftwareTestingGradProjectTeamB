.class public Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public currentToken:Lorg/apache/james/mime4j/field/contenttype/parser/e;

.field protected eol:Ljava/lang/String;

.field public expectedTokenSequences:[[I

.field protected specialConstructor:Z

.field public tokenImage:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 155
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->eol:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->specialConstructor:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->eol:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->specialConstructor:Z

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/contenttype/parser/e;[[I[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->eol:Ljava/lang/String;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->specialConstructor:Z

    .line 49
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    .line 50
    iput-object p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->expectedTokenSequences:[[I

    .line 51
    iput-object p3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->tokenImage:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method private static hY(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 163
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 166
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    const/16 v3, 0x7e

    if-le v2, v3, :cond_1

    .line 196
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0000"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\\u"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    :goto_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :sswitch_1
    const-string v2, "\\b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 174
    :sswitch_2
    const-string v2, "\\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 177
    :sswitch_3
    const-string v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 180
    :sswitch_4
    const-string v2, "\\f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 183
    :sswitch_5
    const-string v2, "\\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 186
    :sswitch_6
    const-string v2, "\\\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 189
    :sswitch_7
    const-string v2, "\\\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 192
    :sswitch_8
    const-string v2, "\\\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 199
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 204
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0x22 -> :sswitch_6
        0x27 -> :sswitch_7
        0x5c -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->specialConstructor:Z

    if-nez v0, :cond_0

    .line 114
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 149
    :goto_0
    return-object v0

    .line 116
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    move v2, v1

    .line 118
    :goto_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->expectedTokenSequences:[[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 119
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 120
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v2, v2, v0

    array-length v2, v2

    :cond_1
    move v3, v1

    .line 122
    :goto_2
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v4, v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 123
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->tokenImage:[Ljava/lang/String;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v5, v5, v0

    aget v5, v5, v3

    aget-object v4, v4, v5

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 125
    :cond_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->expectedTokenSequences:[[I

    aget-object v4, v4, v0

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    if-eqz v3, :cond_3

    .line 126
    const-string v3, "..."

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :cond_3
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_4
    const-string v3, "Encountered \""

    .line 131
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGl:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    move-object v4, v0

    move-object v0, v3

    move v3, v1

    .line 132
    :goto_3
    if-ge v3, v2, :cond_6

    .line 133
    if-eqz v3, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_5
    iget v5, v4, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cFV:I

    if-nez v5, :cond_7

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->tokenImage:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" at line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGl:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iget v1, v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cFW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->currentToken:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGl:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    iget v1, v1, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cFX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->expectedTokenSequences:[[I

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Was expecting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 138
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v4, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGa:Ljava/lang/String;

    invoke-static {v5}, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->hY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 139
    iget-object v4, v4, Lorg/apache/james/mime4j/field/contenttype/parser/e;->cGl:Lorg/apache/james/mime4j/field/contenttype/parser/e;

    .line 132
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v0, v5

    goto/16 :goto_3

    .line 146
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Was expecting one of:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;->eol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
