.class Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers$TextTrackNamespaceContext;
.super Ljava/lang/Object;
.source "TtmlHelpers.java"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextTrackNamespaceContext"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers$TextTrackNamespaceContext;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/tracks/ttml/TtmlHelpers$TextTrackNamespaceContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string/jumbo v0, "ttml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string/jumbo v0, "http://www.w3.org/ns/ttml"

    .line 157
    :goto_0
    return-object v0

    .line 154
    :cond_0
    const-string/jumbo v0, "smpte"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    const-string/jumbo v0, "http://www.smpte-ra.org/schemas/2052-1/2010/smpte-tt"

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string/jumbo v0, "http://www.w3.org/ns/ttml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    const-string/jumbo v0, "ttml"

    .line 171
    :goto_0
    return-object v0

    .line 168
    :cond_0
    const-string/jumbo v0, "http://www.smpte-ra.org/schemas/2052-1/2010/smpte-tt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    const-string/jumbo v0, "smpte"

    goto :goto_0

    .line 171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 3
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "ttml"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "smpte"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
