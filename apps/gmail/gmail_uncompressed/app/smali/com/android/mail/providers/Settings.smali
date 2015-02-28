.class public Lcom/android/mail/providers/Settings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/mail/providers/Settings;",
            ">;"
        }
    .end annotation
.end field

.field static final aBM:Lcom/android/mail/providers/Settings;

.field private static final aCk:Lcom/android/mail/providers/Settings;

.field private static final mW:Ljava/lang/String;


# instance fields
.field public final aBN:Ljava/lang/String;

.field private final aBO:I

.field private aBP:Ljava/lang/Integer;

.field public final aBQ:I

.field public final aBR:I

.field public final aBS:I

.field public final aBT:Z

.field public final aBU:Z

.field public final aBV:Z

.field public final aBW:I

.field public final aBX:Landroid/net/Uri;

.field public final aBY:Ljava/lang/String;

.field public final aBZ:Z

.field public final aCa:I

.field public final aCb:I

.field public final aCc:Z

.field public final aCd:Z

.field public final aCe:Landroid/net/Uri;

.field public final aCf:Ljava/lang/String;

.field public final aCg:I

.field public final aCh:I

.field public final aCi:Landroid/net/Uri;

.field private aCj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/providers/Settings;->mW:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/android/mail/providers/Settings;

    invoke-direct {v0}, Lcom/android/mail/providers/Settings;-><init>()V

    .line 117
    sput-object v0, Lcom/android/mail/providers/Settings;->aBM:Lcom/android/mail/providers/Settings;

    sput-object v0, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    .line 418
    new-instance v0, Lcom/android/mail/providers/B;

    invoke-direct {v0}, Lcom/android/mail/providers/B;-><init>()V

    sput-object v0, Lcom/android/mail/providers/Settings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v4, p0, Lcom/android/mail/providers/Settings;->aBP:Ljava/lang/Integer;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aBN:Ljava/lang/String;

    .line 121
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBO:I

    .line 122
    iput v1, p0, Lcom/android/mail/providers/Settings;->aBQ:I

    .line 123
    iput v1, p0, Lcom/android/mail/providers/Settings;->aBR:I

    .line 124
    iput v3, p0, Lcom/android/mail/providers/Settings;->aBS:I

    .line 125
    iput-boolean v1, p0, Lcom/android/mail/providers/Settings;->aBT:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/mail/providers/Settings;->aBU:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/mail/providers/Settings;->aBV:Z

    .line 128
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aBY:Ljava/lang/String;

    .line 130
    iput-boolean v1, p0, Lcom/android/mail/providers/Settings;->aBZ:Z

    .line 131
    iput v1, p0, Lcom/android/mail/providers/Settings;->aCa:I

    .line 132
    iput v1, p0, Lcom/android/mail/providers/Settings;->aCb:I

    .line 133
    iput-boolean v1, p0, Lcom/android/mail/providers/Settings;->aCc:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/mail/providers/Settings;->aCd:Z

    .line 135
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aCe:Landroid/net/Uri;

    .line 136
    iput v2, p0, Lcom/android/mail/providers/Settings;->aBW:I

    .line 137
    iput-object v4, p0, Lcom/android/mail/providers/Settings;->aCf:Ljava/lang/String;

    .line 138
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aCi:Landroid/net/Uri;

    .line 139
    iput v3, p0, Lcom/android/mail/providers/Settings;->aCg:I

    .line 140
    iput v2, p0, Lcom/android/mail/providers/Settings;->aCh:I

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aBP:Ljava/lang/Integer;

    .line 168
    const-string v0, "signature"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mail/common/base/K;->gJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aBN:Ljava/lang/String;

    .line 170
    const-string v0, "auto_advance"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBO:I

    .line 171
    const-string v0, "snap_headers"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBQ:I

    .line 172
    const-string v0, "reply_behavior"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBR:I

    .line 173
    const-string v0, "conversation_list_icon"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBS:I

    .line 174
    const-string v0, "confirm_delete"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBT:Z

    .line 175
    const-string v0, "confirm_archive"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBU:Z

    .line 176
    const-string v0, "confirm_send"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBV:Z

    .line 177
    const-string v0, "default_inbox"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    .line 179
    const-string v0, "default_inbox_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mail/common/base/K;->gJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aBY:Ljava/lang/String;

    .line 181
    const-string v0, "force_reply_from_default"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBZ:Z

    .line 183
    const-string v0, "max_attachment_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aCa:I

    .line 185
    const-string v0, "swipe"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aCb:I

    .line 186
    const-string v0, "importance_markers_enabled"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aCc:Z

    .line 188
    const-string v0, "show_chevrons_enabled"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/android/mail/providers/Settings;->aCd:Z

    .line 190
    const-string v0, "setup_intent_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aCe:Landroid/net/Uri;

    .line 192
    const-string v0, "conversation_view_mode"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBW:I

    .line 194
    const-string v0, "veiled_address_pattern"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mail/common/base/K;->gJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aCf:Ljava/lang/String;

    .line 196
    const-string v0, "move_to_inbox"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aCi:Landroid/net/Uri;

    .line 198
    const-string v0, "show_images"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aCg:I

    .line 199
    const-string v0, "welcome_tour_shown_version"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aCh:I

    .line 201
    return-void

    :cond_0
    move v0, v2

    .line 174
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 175
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 176
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 181
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 186
    goto :goto_4

    :cond_5
    move v1, v2

    .line 188
    goto :goto_5
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aBP:Ljava/lang/Integer;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aBN:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBO:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBQ:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBR:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBS:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBT:Z

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBU:Z

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBV:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aBY:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBZ:Z

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aCa:I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aCb:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aCc:Z

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/android/mail/providers/Settings;->aCd:Z

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aCe:Landroid/net/Uri;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBW:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aCf:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aCi:Landroid/net/Uri;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aCg:I

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aCh:I

    .line 165
    return-void

    :cond_0
    move v0, v2

    .line 149
    goto :goto_0

    :cond_1
    move v0, v2

    .line 150
    goto :goto_1

    :cond_2
    move v0, v2

    .line 151
    goto :goto_2

    :cond_3
    move v0, v2

    .line 154
    goto :goto_3

    :cond_4
    move v0, v2

    .line 157
    goto :goto_4

    :cond_5
    move v1, v2

    .line 158
    goto :goto_5
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object v2, p0, Lcom/android/mail/providers/Settings;->aBP:Ljava/lang/Integer;

    .line 204
    const-string v0, "signature"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-object v1, v1, Lcom/android/mail/providers/Settings;->aBN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aBN:Ljava/lang/String;

    .line 205
    const-string v0, "auto_advance"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    invoke-virtual {v1}, Lcom/android/mail/providers/Settings;->vH()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBO:I

    .line 206
    const-string v0, "snap_headers"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget v1, v1, Lcom/android/mail/providers/Settings;->aBQ:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBQ:I

    .line 207
    const-string v0, "reply_behavior"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget v1, v1, Lcom/android/mail/providers/Settings;->aBR:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBR:I

    .line 208
    const-string v0, "conversation_list_icon"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget v1, v1, Lcom/android/mail/providers/Settings;->aBS:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBS:I

    .line 209
    const-string v0, "confirm_delete"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-boolean v1, v1, Lcom/android/mail/providers/Settings;->aBT:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBT:Z

    .line 210
    const-string v0, "confirm_archive"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-boolean v1, v1, Lcom/android/mail/providers/Settings;->aBU:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBU:Z

    .line 211
    const-string v0, "confirm_send"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-boolean v1, v1, Lcom/android/mail/providers/Settings;->aBV:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBV:Z

    .line 212
    const-string v0, "default_inbox"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    .line 213
    const-string v0, "default_inbox_name"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-object v1, v1, Lcom/android/mail/providers/Settings;->aBY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aBY:Ljava/lang/String;

    .line 215
    const-string v0, "force_reply_from_default"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-boolean v1, v1, Lcom/android/mail/providers/Settings;->aBZ:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBZ:Z

    .line 217
    const-string v0, "max_attachment_size"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget v1, v1, Lcom/android/mail/providers/Settings;->aCa:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aCa:I

    .line 219
    const-string v0, "swipe"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget v1, v1, Lcom/android/mail/providers/Settings;->aCb:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aCb:I

    .line 220
    const-string v0, "importance_markers_enabled"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-boolean v1, v1, Lcom/android/mail/providers/Settings;->aCc:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aCc:Z

    .line 222
    const-string v0, "show_chevrons_enabled"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-boolean v1, v1, Lcom/android/mail/providers/Settings;->aCd:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mail/providers/Settings;->aCd:Z

    .line 224
    const-string v0, "setup_intent_uri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aCe:Landroid/net/Uri;

    .line 225
    const-string v0, "conversation_view_mode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aBW:I

    .line 227
    const-string v0, "veiled_address_pattern"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aCf:Ljava/lang/String;

    .line 228
    const-string v0, "move_to_inbox"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mail/utils/ag;->bO(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/providers/Settings;->aCi:Landroid/net/Uri;

    .line 229
    const-string v0, "show_images"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget v1, v1, Lcom/android/mail/providers/Settings;->aCg:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aCg:I

    .line 230
    const-string v0, "welcome_tour_shown_version"

    sget-object v1, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget v1, v1, Lcom/android/mail/providers/Settings;->aCh:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mail/providers/Settings;->aCh:I

    .line 232
    return-void
.end method

.method public static a(Lcom/android/mail/providers/Settings;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 372
    if-nez p0, :cond_0

    .line 373
    sget-object v0, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    .line 375
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    sget-object v0, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    if-nez v1, :cond_1

    :goto_1
    check-cast v0, Landroid/net/Uri;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static b(Lcom/android/mail/providers/Settings;)I
    .locals 1

    .prologue
    .line 414
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/android/mail/providers/Settings;->aCb:I

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget v0, v0, Lcom/android/mail/providers/Settings;->aCb:I

    goto :goto_0
.end method

.method public static e(Lorg/json/JSONObject;)Lcom/android/mail/providers/Settings;
    .locals 1

    .prologue
    .line 328
    if-nez p0, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/mail/providers/Settings;

    invoke-direct {v0, p0}, Lcom/android/mail/providers/Settings;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final c(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    if-nez p1, :cond_0

    .line 291
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 294
    :cond_0
    const-string v0, "signature"

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->aBN:Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v0, "auto_advance"

    invoke-virtual {p0}, Lcom/android/mail/providers/Settings;->vH()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v0, "snap_headers"

    iget v3, p0, Lcom/android/mail/providers/Settings;->aBQ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v0, "reply_behavior"

    iget v3, p0, Lcom/android/mail/providers/Settings;->aBR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v0, "conversation_list_icon"

    iget v3, p0, Lcom/android/mail/providers/Settings;->aBS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v3, "confirm_delete"

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBT:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v3, "confirm_archive"

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBU:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v3, "confirm_send"

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBV:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v0, "default_inbox"

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v0, "default_inbox_name"

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->aBY:Ljava/lang/String;

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v3, "force_reply_from_default"

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBZ:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v0, "max_attachment_size"

    iget v3, p0, Lcom/android/mail/providers/Settings;->aCa:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v0, "swipe"

    iget v3, p0, Lcom/android/mail/providers/Settings;->aCb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v3, "importance_markers_enabled"

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aCc:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v0, "show_chevrons_enabled"

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->aCd:Z

    if-eqz v3, :cond_6

    :goto_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v0, "setup_intent_uri"

    iget-object v1, p0, Lcom/android/mail/providers/Settings;->aCe:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v0, "conversation_view_mode"

    iget v1, p0, Lcom/android/mail/providers/Settings;->aBW:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string v0, "veiled_address_pattern"

    iget-object v1, p0, Lcom/android/mail/providers/Settings;->aCf:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v0, "move_to_inbox"

    iget-object v1, p0, Lcom/android/mail/providers/Settings;->aCi:Landroid/net/Uri;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string v0, "show_images"

    iget v1, p0, Lcom/android/mail/providers/Settings;->aCg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v0, "welcome_tour_shown_version"

    iget v1, p0, Lcom/android/mail/providers/Settings;->aCh:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    return-object p1

    :cond_1
    move v0, v2

    .line 299
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 300
    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 301
    goto/16 :goto_2

    :cond_4
    move v0, v2

    .line 304
    goto :goto_3

    :cond_5
    move v0, v2

    .line 307
    goto :goto_4

    :cond_6
    move v1, v2

    .line 308
    goto :goto_5
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 439
    sget-object v0, Lcom/android/mail/providers/Settings;->mW:Ljava/lang/String;

    const-string v3, "Settings.equals(%s)"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 440
    if-ne p0, p1, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v1

    .line 443
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v0, v3, :cond_3

    :cond_2
    move v1, v2

    .line 444
    goto :goto_0

    .line 446
    :cond_3
    check-cast p1, Lcom/android/mail/providers/Settings;

    .line 447
    iget-object v0, p0, Lcom/android/mail/providers/Settings;->aBP:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mail/providers/Settings;->aBP:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/mail/providers/Settings;->aBP:Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 450
    :goto_1
    iget-object v3, p0, Lcom/android/mail/providers/Settings;->aBN:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/mail/providers/Settings;->aBN:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/mail/providers/Settings;->aBO:I

    iget v4, p1, Lcom/android/mail/providers/Settings;->aBO:I

    if-ne v3, v4, :cond_4

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/mail/providers/Settings;->aBQ:I

    iget v3, p1, Lcom/android/mail/providers/Settings;->aBQ:I

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/android/mail/providers/Settings;->aBR:I

    iget v3, p1, Lcom/android/mail/providers/Settings;->aBR:I

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/android/mail/providers/Settings;->aBS:I

    iget v3, p1, Lcom/android/mail/providers/Settings;->aBS:I

    if-ne v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBT:Z

    iget-boolean v3, p1, Lcom/android/mail/providers/Settings;->aBT:Z

    if-ne v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBU:Z

    iget-boolean v3, p1, Lcom/android/mail/providers/Settings;->aBU:Z

    if-ne v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBV:Z

    iget-boolean v3, p1, Lcom/android/mail/providers/Settings;->aBV:Z

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBZ:Z

    iget-boolean v3, p1, Lcom/android/mail/providers/Settings;->aBZ:Z

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/android/mail/providers/Settings;->aCa:I

    iget v3, p1, Lcom/android/mail/providers/Settings;->aCa:I

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/android/mail/providers/Settings;->aCb:I

    iget v3, p1, Lcom/android/mail/providers/Settings;->aCb:I

    if-ne v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aCc:Z

    iget-boolean v3, p1, Lcom/android/mail/providers/Settings;->aCc:Z

    if-ne v0, v3, :cond_4

    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aCd:Z

    iget-boolean v3, p1, Lcom/android/mail/providers/Settings;->aCd:Z

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/mail/providers/Settings;->aCe:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Settings;->aCe:Landroid/net/Uri;

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/android/mail/providers/Settings;->aBW:I

    iget v3, p1, Lcom/android/mail/providers/Settings;->aBW:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/mail/providers/Settings;->aCf:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/mail/providers/Settings;->aCf:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mail/providers/Settings;->aCi:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/mail/providers/Settings;->aCi:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/mail/providers/Settings;->aCh:I

    iget v3, p1, Lcom/android/mail/providers/Settings;->aCh:I

    if-eq v0, v3, :cond_0

    :cond_4
    move v1, v2

    goto/16 :goto_0

    .line 447
    :cond_5
    iget-object v0, p1, Lcom/android/mail/providers/Settings;->aBP:Ljava/lang/Integer;

    if-nez v0, :cond_6

    move v0, v1

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto/16 :goto_1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 475
    iget v0, p0, Lcom/android/mail/providers/Settings;->aCj:I

    if-nez v0, :cond_0

    .line 476
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->aBN:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/mail/providers/Settings;->aBO:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->aBP:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/mail/providers/Settings;->aBQ:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/mail/providers/Settings;->aBR:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/mail/providers/Settings;->aBS:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->aBT:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->aBU:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->aBV:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->aBZ:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget v3, p0, Lcom/android/mail/providers/Settings;->aCa:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget v3, p0, Lcom/android/mail/providers/Settings;->aCb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->aCc:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    iget-boolean v3, p0, Lcom/android/mail/providers/Settings;->aCd:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->aCe:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    iget v3, p0, Lcom/android/mail/providers/Settings;->aBW:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->aCf:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    iget-object v3, p0, Lcom/android/mail/providers/Settings;->aCi:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    iget v3, p0, Lcom/android/mail/providers/Settings;->aCh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/android/mail/providers/Settings;->aCj:I

    .line 484
    :cond_0
    iget v0, p0, Lcom/android/mail/providers/Settings;->aCj:I

    return v0
.end method

.method public final declared-synchronized up()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :try_start_1
    const-string v3, "signature"

    iget-object v1, p0, Lcom/android/mail/providers/Settings;->aBN:Ljava/lang/String;

    sget-object v0, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aBN:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v0, "auto_advance"

    invoke-virtual {p0}, Lcom/android/mail/providers/Settings;->vH()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 256
    const-string v0, "snap_headers"

    iget v1, p0, Lcom/android/mail/providers/Settings;->aBQ:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 257
    const-string v0, "reply_behavior"

    iget v1, p0, Lcom/android/mail/providers/Settings;->aBR:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 258
    const-string v0, "conversation_list_icon"

    iget v1, p0, Lcom/android/mail/providers/Settings;->aBS:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    const-string v0, "confirm_delete"

    iget-boolean v1, p0, Lcom/android/mail/providers/Settings;->aBT:Z

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 260
    const-string v0, "confirm_archive"

    iget-boolean v1, p0, Lcom/android/mail/providers/Settings;->aBU:Z

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 261
    const-string v0, "confirm_send"

    iget-boolean v1, p0, Lcom/android/mail/providers/Settings;->aBV:Z

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 262
    const-string v3, "default_inbox"

    iget-object v1, p0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    sget-object v0, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v3, "default_inbox_name"

    iget-object v1, p0, Lcom/android/mail/providers/Settings;->aBY:Ljava/lang/String;

    sget-object v0, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aBY:Ljava/lang/String;

    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v0, "force_reply_from_default"

    iget-boolean v1, p0, Lcom/android/mail/providers/Settings;->aBZ:Z

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 267
    const-string v0, "max_attachment_size"

    iget v1, p0, Lcom/android/mail/providers/Settings;->aCa:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 268
    const-string v0, "swipe"

    iget v1, p0, Lcom/android/mail/providers/Settings;->aCb:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    const-string v0, "importance_markers_enabled"

    iget-boolean v1, p0, Lcom/android/mail/providers/Settings;->aCc:Z

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 270
    const-string v0, "show_chevrons_enabled"

    iget-boolean v1, p0, Lcom/android/mail/providers/Settings;->aCd:Z

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 271
    const-string v0, "setup_intent_uri"

    iget-object v1, p0, Lcom/android/mail/providers/Settings;->aCe:Landroid/net/Uri;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v0, "conversation_view_mode"

    iget v1, p0, Lcom/android/mail/providers/Settings;->aBW:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 273
    const-string v0, "veiled_address_pattern"

    iget-object v1, p0, Lcom/android/mail/providers/Settings;->aCf:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v3, "move_to_inbox"

    iget-object v1, p0, Lcom/android/mail/providers/Settings;->aCi:Landroid/net/Uri;

    sget-object v0, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aCi:Landroid/net/Uri;

    if-nez v1, :cond_3

    :goto_3
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v0, "show_images"

    iget v1, p0, Lcom/android/mail/providers/Settings;->aCg:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 277
    const-string v0, "welcome_tour_shown_version"

    iget v1, p0, Lcom/android/mail/providers/Settings;->aCh:I

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    :goto_4
    monitor-exit p0

    return-object v2

    :cond_0
    move-object v0, v1

    .line 254
    goto/16 :goto_0

    :cond_1
    move-object v0, v1

    .line 262
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 264
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 274
    goto :goto_3

    .line 278
    :catch_0
    move-exception v0

    .line 279
    :try_start_2
    sget-object v1, Lcom/android/mail/providers/Settings;->mW:Ljava/lang/String;

    const-string v3, "Could not serialize settings"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lcom/android/mail/utils/E;->f(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final vH()I
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/mail/providers/Settings;->aBP:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/mail/providers/Settings;->aBP:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 387
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mail/providers/Settings;->aBO:I

    goto :goto_0
.end method

.method public final vI()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 403
    iget v1, p0, Lcom/android/mail/providers/Settings;->aBW:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/mail/providers/Settings;->aBW:I

    .line 405
    :goto_0
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 403
    goto :goto_0
.end method

.method public final vJ()I
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/android/mail/providers/Settings;->aCa:I

    if-gtz v0, :cond_0

    const/high16 v0, 0x500000

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mail/providers/Settings;->aCa:I

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 341
    iget-object v1, p0, Lcom/android/mail/providers/Settings;->aBN:Ljava/lang/String;

    sget-object v0, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aBN:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/mail/providers/Settings;->vH()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v0, p0, Lcom/android/mail/providers/Settings;->aBQ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget v0, p0, Lcom/android/mail/providers/Settings;->aBR:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget v0, p0, Lcom/android/mail/providers/Settings;->aBS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBT:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBU:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBV:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget-object v1, p0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    sget-object v0, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aBX:Landroid/net/Uri;

    if-nez v1, :cond_4

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/android/mail/providers/Settings;->aBY:Ljava/lang/String;

    sget-object v0, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aBY:Ljava/lang/String;

    if-nez v1, :cond_5

    :goto_5
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aBZ:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget v0, p0, Lcom/android/mail/providers/Settings;->aCa:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget v0, p0, Lcom/android/mail/providers/Settings;->aCb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aCc:Z

    if-eqz v0, :cond_7

    move v0, v2

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget-boolean v0, p0, Lcom/android/mail/providers/Settings;->aCd:Z

    if-eqz v0, :cond_8

    :goto_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget-object v1, p0, Lcom/android/mail/providers/Settings;->aCe:Landroid/net/Uri;

    sget-object v0, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aCe:Landroid/net/Uri;

    if-nez v1, :cond_9

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget v0, p0, Lcom/android/mail/providers/Settings;->aBW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget-object v0, p0, Lcom/android/mail/providers/Settings;->aCf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/android/mail/providers/Settings;->aCi:Landroid/net/Uri;

    sget-object v0, Lcom/android/mail/providers/Settings;->aCk:Lcom/android/mail/providers/Settings;

    iget-object v0, v0, Lcom/android/mail/providers/Settings;->aCi:Landroid/net/Uri;

    if-nez v1, :cond_a

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget v0, p0, Lcom/android/mail/providers/Settings;->aCg:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget v0, p0, Lcom/android/mail/providers/Settings;->aCh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    return-void

    :cond_0
    move-object v0, v1

    .line 341
    goto/16 :goto_0

    :cond_1
    move v0, v3

    .line 346
    goto/16 :goto_1

    :cond_2
    move v0, v3

    .line 347
    goto/16 :goto_2

    :cond_3
    move v0, v3

    .line 348
    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 349
    goto :goto_4

    :cond_5
    move-object v0, v1

    .line 350
    goto :goto_5

    :cond_6
    move v0, v3

    .line 351
    goto :goto_6

    :cond_7
    move v0, v3

    .line 354
    goto :goto_7

    :cond_8
    move v2, v3

    .line 355
    goto :goto_8

    :cond_9
    move-object v0, v1

    .line 356
    goto :goto_9

    :cond_a
    move-object v0, v1

    .line 359
    goto :goto_a
.end method
