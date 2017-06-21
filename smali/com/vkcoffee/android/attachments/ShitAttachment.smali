.class public Lcom/vkcoffee/android/attachments/ShitAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "ShitAttachment.java"


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/ShitAttachment;",
            ">;"
        }
    .end annotation
.end field

.field public static final TARGET_EXTERNAL:I = 0x0

.field public static final TARGET_INTERNAL:I = 0x1

.field public static final TARGET_INTERNAL_VISIBLE:I = 0x2


# instance fields
.field public ageRestriction:Ljava/lang/String;

.field public appPackage:Ljava/lang/String;

.field public buttonText:Ljava/lang/String;

.field public buttonTextInstalled:Ljava/lang/String;

.field public data:Ljava/lang/String;

.field public dataImpression:Ljava/lang/String;

.field public deepLink:Ljava/lang/String;

.field public followers:Ljava/lang/String;

.field public genre:Ljava/lang/String;

.field public transient installed:Z

.field public link:Ljava/lang/String;

.field public linkTarget:I

.field public photo:Lcom/vkcoffee/android/attachments/PhotoAttachment;

.field public rating:F

.field public statClickURLs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public statDeeplinkClickURLs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public statImpressionURLs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public statLoadURLs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public timeToLive:I

.field public userName:Ljava/lang/String;

.field public userPhoto:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/vkcoffee/android/attachments/ShitAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/ShitAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/ShitAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statLoadURLs:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statImpressionURLs:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statClickURLs:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statDeeplinkClickURLs:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "_followers"    # Ljava/lang/String;
    .param p2, "_btnText"    # Ljava/lang/String;
    .param p3, "_link"    # Ljava/lang/String;
    .param p4, "_rating"    # F
    .param p5, "_buttonTextInstalled"    # Ljava/lang/String;
    .param p6, "_data"    # Ljava/lang/String;
    .param p7, "_dataImpression"    # Ljava/lang/String;
    .param p8, "_appPackage"    # Ljava/lang/String;
    .param p9, "_deepLink"    # Ljava/lang/String;
    .param p10, "_linkTarget"    # I
    .param p11, "_text"    # Ljava/lang/String;
    .param p12, "_genre"    # Ljava/lang/String;
    .param p13, "_timeToLive"    # I
    .param p14, "_userName"    # Ljava/lang/String;
    .param p15, "_userPhoto"    # Ljava/lang/String;
    .param p16, "_ageRestriction"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statLoadURLs:Ljava/util/ArrayList;

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statImpressionURLs:Ljava/util/ArrayList;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statClickURLs:Ljava/util/ArrayList;

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statDeeplinkClickURLs:Ljava/util/ArrayList;

    .line 48
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->followers:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->buttonText:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->link:Ljava/lang/String;

    .line 51
    iput p4, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->rating:F

    .line 52
    iput-object p5, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->buttonTextInstalled:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->data:Ljava/lang/String;

    .line 54
    iput-object p7, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->dataImpression:Ljava/lang/String;

    .line 55
    iput-object p8, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->appPackage:Ljava/lang/String;

    .line 56
    iput-object p9, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->deepLink:Ljava/lang/String;

    .line 57
    iput p10, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->linkTarget:I

    .line 58
    iput-object p11, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->text:Ljava/lang/String;

    .line 59
    iput-object p12, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->genre:Ljava/lang/String;

    .line 60
    iput p13, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->timeToLive:I

    .line 61
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->userName:Ljava/lang/String;

    .line 62
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->userPhoto:Ljava/lang/String;

    .line 63
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->ageRestriction:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/ShitAttachment;->updateInstallationState()V

    .line 65
    return-void
.end method


# virtual methods
.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/attachments/ShitAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 3
    .param p1, "os"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->followers:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->buttonText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->link:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 114
    iget v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->rating:F

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeFloat(F)V

    .line 115
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->buttonTextInstalled:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->data:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->dataImpression:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->appPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->deepLink:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 120
    iget v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->linkTarget:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 121
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->genre:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 123
    iget v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->timeToLive:I

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 124
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->userName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->userPhoto:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->ageRestriction:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->photo:Lcom/vkcoffee/android/attachments/PhotoAttachment;

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeSerializable(Lcom/vkcoffee/android/utils/Serializer$Serializable;)V

    .line 130
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statImpressionURLs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 131
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statImpressionURLs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statClickURLs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 135
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statClickURLs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 136
    .restart local v0    # "s":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statDeeplinkClickURLs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 139
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->statDeeplinkClickURLs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    .restart local v0    # "s":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 142
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public updateInstallationState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->appPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->appPackage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->appPackage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->installed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "x":Ljava/lang/Exception;
    iput-boolean v4, p0, Lcom/vkcoffee/android/attachments/ShitAttachment;->installed:Z

    goto :goto_0
.end method
