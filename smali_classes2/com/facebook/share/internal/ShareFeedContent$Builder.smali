.class public final Lcom/facebook/share/internal/ShareFeedContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareFeedContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/ShareFeedContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder",
        "<",
        "Lcom/facebook/share/internal/ShareFeedContent;",
        "Lcom/facebook/share/internal/ShareFeedContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private link:Ljava/lang/String;

.field private linkCaption:Ljava/lang/String;

.field private linkDescription:Ljava/lang/String;

.field private linkName:Ljava/lang/String;

.field private mediaSource:Ljava/lang/String;

.field private picture:Ljava/lang/String;

.field private toId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/internal/ShareFeedContent$Builder;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->toId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/internal/ShareFeedContent$Builder;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->link:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/internal/ShareFeedContent$Builder;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->linkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/internal/ShareFeedContent$Builder;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->linkCaption:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/internal/ShareFeedContent$Builder;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->linkDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/internal/ShareFeedContent$Builder;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->picture:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/share/internal/ShareFeedContent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/internal/ShareFeedContent$Builder;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->mediaSource:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/internal/ShareFeedContent;
    .locals 2

    .prologue
    .line 170
    new-instance v0, Lcom/facebook/share/internal/ShareFeedContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/internal/ShareFeedContent;-><init>(Lcom/facebook/share/internal/ShareFeedContent$Builder;Lcom/facebook/share/internal/ShareFeedContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->build()Lcom/facebook/share/internal/ShareFeedContent;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Landroid/os/Parcel;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 192
    const-class v0, Lcom/facebook/share/internal/ShareFeedContent;

    .line 194
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 193
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/ShareFeedContent;

    .line 192
    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->readFrom(Lcom/facebook/share/internal/ShareFeedContent;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/internal/ShareFeedContent;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 2
    .param p1, "model"    # Lcom/facebook/share/internal/ShareFeedContent;

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 186
    .end local p0    # "this":Lcom/facebook/share/internal/ShareFeedContent$Builder;
    :goto_0
    return-object p0

    .line 179
    .restart local p0    # "this":Lcom/facebook/share/internal/ShareFeedContent$Builder;
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/ShareFeedContent$Builder;

    .line 180
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->getToId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setToId(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setLink(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->getLinkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setLinkName(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    .line 183
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->getLinkCaption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setLinkCaption(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->getLinkDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setLinkDescription(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->getPicture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setPicture(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {p1}, Lcom/facebook/share/internal/ShareFeedContent;->getMediaSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setMediaSource(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .locals 1

    .prologue
    .line 123
    check-cast p1, Lcom/facebook/share/internal/ShareFeedContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->readFrom(Lcom/facebook/share/internal/ShareFeedContent;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->readFrom(Landroid/os/Parcel;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .locals 1

    .prologue
    .line 123
    check-cast p1, Lcom/facebook/share/internal/ShareFeedContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->readFrom(Lcom/facebook/share/internal/ShareFeedContent;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLink(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->link:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public setLinkCaption(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 0
    .param p1, "linkCaption"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->linkCaption:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public setLinkDescription(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 0
    .param p1, "linkDescription"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->linkDescription:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public setLinkName(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 0
    .param p1, "linkName"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->linkName:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setMediaSource(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 0
    .param p1, "mediaSource"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->mediaSource:Ljava/lang/String;

    .line 165
    return-object p0
.end method

.method public setPicture(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 0
    .param p1, "picture"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->picture:Ljava/lang/String;

    .line 160
    return-object p0
.end method

.method public setToId(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .locals 0
    .param p1, "toId"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/facebook/share/internal/ShareFeedContent$Builder;->toId:Ljava/lang/String;

    .line 135
    return-object p0
.end method
