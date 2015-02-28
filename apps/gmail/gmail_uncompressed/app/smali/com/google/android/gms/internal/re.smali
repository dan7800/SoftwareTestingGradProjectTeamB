.class public final Lcom/google/android/gms/internal/re;
.super Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;

# interfaces
.implements Lcom/google/android/gms/plus/a/a/a;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/cQ;

.field private static final bXv:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;>;"
        }
    .end annotation
.end field


# instance fields
.field bMj:Ljava/lang/String;

.field bUY:D

.field bUZ:D

.field bXA:Ljava/lang/String;

.field bXB:Ljava/lang/String;

.field bXC:Ljava/lang/String;

.field bXD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/re;",
            ">;"
        }
    .end annotation
.end field

.field bXE:I

.field bXF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/re;",
            ">;"
        }
    .end annotation
.end field

.field bXG:Lcom/google/android/gms/internal/re;

.field bXH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/re;",
            ">;"
        }
    .end annotation
.end field

.field bXI:Ljava/lang/String;

.field bXJ:Ljava/lang/String;

.field bXK:Lcom/google/android/gms/internal/re;

.field bXL:Ljava/lang/String;

.field bXM:Ljava/lang/String;

.field bXN:Ljava/lang/String;

.field bXO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/re;",
            ">;"
        }
    .end annotation
.end field

.field bXP:Ljava/lang/String;

.field bXQ:Ljava/lang/String;

.field bXR:Ljava/lang/String;

.field bXS:Ljava/lang/String;

.field bXT:Ljava/lang/String;

.field bXU:Ljava/lang/String;

.field bXV:Ljava/lang/String;

.field bXW:Ljava/lang/String;

.field bXX:Lcom/google/android/gms/internal/re;

.field bXY:Ljava/lang/String;

.field bXZ:Ljava/lang/String;

.field final bXw:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field bXx:Lcom/google/android/gms/internal/re;

.field bXy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field bXz:Lcom/google/android/gms/internal/re;

.field bYa:Ljava/lang/String;

.field bYb:Lcom/google/android/gms/internal/re;

.field bYc:Lcom/google/android/gms/internal/re;

.field bYd:Lcom/google/android/gms/internal/re;

.field bYe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/re;",
            ">;"
        }
    .end annotation
.end field

.field bYf:Ljava/lang/String;

.field bYg:Ljava/lang/String;

.field bYh:Ljava/lang/String;

.field bYi:Ljava/lang/String;

.field bYj:Lcom/google/android/gms/internal/re;

.field bYk:Ljava/lang/String;

.field bYl:Ljava/lang/String;

.field bYm:Ljava/lang/String;

.field bYn:Lcom/google/android/gms/internal/re;

.field bYo:Ljava/lang/String;

.field bYp:Ljava/lang/String;

.field bYq:Ljava/lang/String;

.field bYr:Ljava/lang/String;

.field bYs:Ljava/lang/String;

.field final btV:I

.field bzB:Ljava/lang/String;

.field bzz:Ljava/lang/String;

.field mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/cQ;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cQ;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/re;->CREATOR:Lcom/google/android/gms/internal/cQ;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "about"

    const-string v2, "about"

    const/4 v3, 0x2

    const-class v4, Lcom/google/android/gms/internal/re;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "additionalName"

    const-string v2, "additionalName"

    invoke-static {v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->fZ(Ljava/lang/String;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "address"

    const-string v2, "address"

    const/4 v3, 0x4

    const-class v4, Lcom/google/android/gms/internal/re;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "addressCountry"

    const-string v2, "addressCountry"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "addressLocality"

    const-string v2, "addressLocality"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "addressRegion"

    const-string v2, "addressRegion"

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "associated_media"

    const-string v2, "associated_media"

    const/16 v3, 0x8

    const-class v4, Lcom/google/android/gms/internal/re;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "attendeeCount"

    const-string v2, "attendeeCount"

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "attendees"

    const-string v2, "attendees"

    const/16 v3, 0xa

    const-class v4, Lcom/google/android/gms/internal/re;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "audio"

    const-string v2, "audio"

    const/16 v3, 0xb

    const-class v4, Lcom/google/android/gms/internal/re;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "author"

    const-string v2, "author"

    const/16 v3, 0xc

    const-class v4, Lcom/google/android/gms/internal/re;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "bestRating"

    const-string v2, "bestRating"

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "birthDate"

    const-string v2, "birthDate"

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "byArtist"

    const-string v2, "byArtist"

    const/16 v3, 0xf

    const-class v4, Lcom/google/android/gms/internal/re;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "caption"

    const-string v2, "caption"

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "contentSize"

    const-string v2, "contentSize"

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "contentUrl"

    const-string v2, "contentUrl"

    const/16 v3, 0x12

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "contributor"

    const-string v2, "contributor"

    const/16 v3, 0x13

    const-class v4, Lcom/google/android/gms/internal/re;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "dateCreated"

    const-string v2, "dateCreated"

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "dateModified"

    const-string v2, "dateModified"

    const/16 v3, 0x15

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "datePublished"

    const-string v2, "datePublished"

    const/16 v3, 0x16

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    const/16 v3, 0x17

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    const/16 v3, 0x18

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "embedUrl"

    const-string v2, "embedUrl"

    const/16 v3, 0x19

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "endDate"

    const-string v2, "endDate"

    const/16 v3, 0x1a

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "familyName"

    const-string v2, "familyName"

    const/16 v3, 0x1b

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "gender"

    const-string v2, "gender"

    const/16 v3, 0x1c

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "geo"

    const-string v2, "geo"

    const/16 v3, 0x1d

    const-class v4, Lcom/google/android/gms/internal/re;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "givenName"

    const-string v2, "givenName"

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "height"

    const-string v2, "height"

    const/16 v3, 0x1f

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "id"

    const-string v2, "id"

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "image"

    const-string v2, "image"

    const/16 v3, 0x21

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "inAlbum"

    const-string v2, "inAlbum"

    const/16 v3, 0x22

    const-class v4, Lcom/google/android/gms/internal/re;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "latitude"

    const-string v2, "latitude"

    const/16 v3, 0x24

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->l(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "location"

    const-string v2, "location"

    const/16 v3, 0x25

    const-class v4, Lcom/google/android/gms/internal/re;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "longitude"

    const-string v2, "longitude"

    const/16 v3, 0x26

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->l(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    const/16 v3, 0x27

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "partOfTVSeries"

    const-string v2, "partOfTVSeries"

    const/16 v3, 0x28

    const-class v4, Lcom/google/android/gms/internal/re;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "performers"

    const-string v2, "performers"

    const/16 v3, 0x29

    const-class v4, Lcom/google/android/gms/internal/re;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "playerType"

    const-string v2, "playerType"

    const/16 v3, 0x2a

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "postOfficeBoxNumber"

    const-string v2, "postOfficeBoxNumber"

    const/16 v3, 0x2b

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "postalCode"

    const-string v2, "postalCode"

    const/16 v3, 0x2c

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "ratingValue"

    const-string v2, "ratingValue"

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "reviewRating"

    const-string v2, "reviewRating"

    const/16 v3, 0x2e

    const-class v4, Lcom/google/android/gms/internal/re;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "startDate"

    const-string v2, "startDate"

    const/16 v3, 0x2f

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "streetAddress"

    const-string v2, "streetAddress"

    const/16 v3, 0x30

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "text"

    const-string v2, "text"

    const/16 v3, 0x31

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "thumbnail"

    const-string v2, "thumbnail"

    const/16 v3, 0x32

    const-class v4, Lcom/google/android/gms/internal/re;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "thumbnailUrl"

    const-string v2, "thumbnailUrl"

    const/16 v3, 0x33

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "tickerSymbol"

    const-string v2, "tickerSymbol"

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    const/16 v3, 0x35

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "url"

    const-string v2, "url"

    const/16 v3, 0x36

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "width"

    const-string v2, "width"

    const/16 v3, 0x37

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    const-string v1, "worstRating"

    const-string v2, "worstRating"

    const/16 v3, 0x38

    invoke-static {v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/re;->btV:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXw:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;ILcom/google/android/gms/internal/re;Ljava/util/List;Lcom/google/android/gms/internal/re;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;Lcom/google/android/gms/internal/re;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/re;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/re;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/re;DLcom/google/android/gms/internal/re;DLjava/lang/String;Lcom/google/android/gms/internal/re;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/re;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/re;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/google/android/gms/internal/re;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/re;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/re;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/re;",
            ">;",
            "Lcom/google/android/gms/internal/re;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/re;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/re;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/re;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/re;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/re;",
            "D",
            "Lcom/google/android/gms/internal/re;",
            "D",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/re;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/re;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/re;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/re;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/server/response/FastSafeParcelableJsonResponse;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/re;->bXw:Ljava/util/Set;

    iput p2, p0, Lcom/google/android/gms/internal/re;->btV:I

    iput-object p3, p0, Lcom/google/android/gms/internal/re;->bXx:Lcom/google/android/gms/internal/re;

    iput-object p4, p0, Lcom/google/android/gms/internal/re;->bXy:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/re;->bXz:Lcom/google/android/gms/internal/re;

    iput-object p6, p0, Lcom/google/android/gms/internal/re;->bXA:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/re;->bXB:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/re;->bXC:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/re;->bXD:Ljava/util/List;

    iput p10, p0, Lcom/google/android/gms/internal/re;->bXE:I

    iput-object p11, p0, Lcom/google/android/gms/internal/re;->bXF:Ljava/util/List;

    iput-object p12, p0, Lcom/google/android/gms/internal/re;->bXG:Lcom/google/android/gms/internal/re;

    iput-object p13, p0, Lcom/google/android/gms/internal/re;->bXH:Ljava/util/List;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXI:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXJ:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXK:Lcom/google/android/gms/internal/re;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXL:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXM:Ljava/lang/String;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXN:Ljava/lang/String;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXO:Ljava/util/List;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXP:Ljava/lang/String;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXQ:Ljava/lang/String;

    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXR:Ljava/lang/String;

    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bMj:Ljava/lang/String;

    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXS:Ljava/lang/String;

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXT:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXU:Ljava/lang/String;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXV:Ljava/lang/String;

    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXW:Ljava/lang/String;

    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXX:Lcom/google/android/gms/internal/re;

    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXY:Ljava/lang/String;

    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bXZ:Ljava/lang/String;

    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bzz:Ljava/lang/String;

    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYa:Ljava/lang/String;

    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYb:Lcom/google/android/gms/internal/re;

    move-wide/from16 v0, p36

    iput-wide v0, p0, Lcom/google/android/gms/internal/re;->bUY:D

    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYc:Lcom/google/android/gms/internal/re;

    move-wide/from16 v0, p39

    iput-wide v0, p0, Lcom/google/android/gms/internal/re;->bUZ:D

    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->mName:Ljava/lang/String;

    move-object/from16 v0, p42

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYd:Lcom/google/android/gms/internal/re;

    move-object/from16 v0, p43

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYe:Ljava/util/List;

    move-object/from16 v0, p44

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYf:Ljava/lang/String;

    move-object/from16 v0, p45

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYg:Ljava/lang/String;

    move-object/from16 v0, p46

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYh:Ljava/lang/String;

    move-object/from16 v0, p47

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYi:Ljava/lang/String;

    move-object/from16 v0, p48

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYj:Lcom/google/android/gms/internal/re;

    move-object/from16 v0, p49

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYk:Ljava/lang/String;

    move-object/from16 v0, p50

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYl:Ljava/lang/String;

    move-object/from16 v0, p51

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYm:Ljava/lang/String;

    move-object/from16 v0, p52

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYn:Lcom/google/android/gms/internal/re;

    move-object/from16 v0, p53

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYo:Ljava/lang/String;

    move-object/from16 v0, p54

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYp:Ljava/lang/String;

    move-object/from16 v0, p55

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bzB:Ljava/lang/String;

    move-object/from16 v0, p56

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYq:Ljava/lang/String;

    move-object/from16 v0, p57

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYr:Ljava/lang/String;

    move-object/from16 v0, p58

    iput-object v0, p0, Lcom/google/android/gms/internal/re;->bYs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic KN()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public final Lu()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    return-object v0
.end method

.method protected final a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXw:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->LC()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->LC()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown safe parcelable id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->LC()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXx:Lcom/google/android/gms/internal/re;

    :goto_0
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXy:Ljava/util/List;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXz:Lcom/google/android/gms/internal/re;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXA:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXB:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXC:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXD:Ljava/util/List;

    goto :goto_0

    :pswitch_8
    iget v0, p0, Lcom/google/android/gms/internal/re;->bXE:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXF:Ljava/util/List;

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXG:Lcom/google/android/gms/internal/re;

    goto :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXH:Ljava/util/List;

    goto :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXI:Ljava/lang/String;

    goto :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXJ:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXK:Lcom/google/android/gms/internal/re;

    goto :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXL:Ljava/lang/String;

    goto :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXM:Ljava/lang/String;

    goto :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXN:Ljava/lang/String;

    goto :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXO:Ljava/util/List;

    goto :goto_0

    :pswitch_13
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXP:Ljava/lang/String;

    goto :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXQ:Ljava/lang/String;

    goto :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXR:Ljava/lang/String;

    goto :goto_0

    :pswitch_16
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bMj:Ljava/lang/String;

    goto :goto_0

    :pswitch_17
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXS:Ljava/lang/String;

    goto :goto_0

    :pswitch_18
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXT:Ljava/lang/String;

    goto :goto_0

    :pswitch_19
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXU:Ljava/lang/String;

    goto :goto_0

    :pswitch_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXV:Ljava/lang/String;

    goto :goto_0

    :pswitch_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXW:Ljava/lang/String;

    goto :goto_0

    :pswitch_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXX:Lcom/google/android/gms/internal/re;

    goto :goto_0

    :pswitch_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXY:Ljava/lang/String;

    goto :goto_0

    :pswitch_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bXZ:Ljava/lang/String;

    goto :goto_0

    :pswitch_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bzz:Ljava/lang/String;

    goto :goto_0

    :pswitch_20
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYa:Ljava/lang/String;

    goto :goto_0

    :pswitch_21
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYb:Lcom/google/android/gms/internal/re;

    goto :goto_0

    :pswitch_22
    iget-wide v0, p0, Lcom/google/android/gms/internal/re;->bUY:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :pswitch_23
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYc:Lcom/google/android/gms/internal/re;

    goto :goto_0

    :pswitch_24
    iget-wide v0, p0, Lcom/google/android/gms/internal/re;->bUZ:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :pswitch_25
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->mName:Ljava/lang/String;

    goto :goto_0

    :pswitch_26
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYd:Lcom/google/android/gms/internal/re;

    goto :goto_0

    :pswitch_27
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYe:Ljava/util/List;

    goto :goto_0

    :pswitch_28
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYf:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_29
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYg:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYh:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYi:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYj:Lcom/google/android/gms/internal/re;

    goto/16 :goto_0

    :pswitch_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYk:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYl:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYm:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_30
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYn:Lcom/google/android/gms/internal/re;

    goto/16 :goto_0

    :pswitch_31
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYo:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_32
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYp:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_33
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bzB:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_34
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYq:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_35
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYr:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_36
    iget-object v0, p0, Lcom/google/android/gms/internal/re;->bYs:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_0
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
    .end packed-switch
.end method

.method public final describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/re;->CREATOR:Lcom/google/android/gms/internal/cQ;

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lcom/google/android/gms/internal/re;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/re;

    sget-object v0, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/re;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/re;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/re;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/re;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/re;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/internal/re;->bXv:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/re;->a(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->LC()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/re;->b(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/re;->CREATOR:Lcom/google/android/gms/internal/cQ;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cQ;->a(Lcom/google/android/gms/internal/re;Landroid/os/Parcel;I)V

    return-void
.end method
