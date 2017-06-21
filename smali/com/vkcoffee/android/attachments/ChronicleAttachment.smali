.class public Lcom/vkcoffee/android/attachments/ChronicleAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "ChronicleAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/ImageAttachment;


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/ChronicleAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appName:Ljava/lang/String;

.field public appPackage:Ljava/lang/String;

.field public caption:Ljava/lang/String;

.field public id:I

.field public label:Ljava/lang/String;

.field public ownerID:I

.field public src:Ljava/lang/String;

.field public srcBig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/vkcoffee/android/attachments/ChronicleAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/ChronicleAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # I
    .param p2, "_ownerID"    # I
    .param p3, "_appName"    # Ljava/lang/String;
    .param p4, "_caption"    # Ljava/lang/String;
    .param p5, "_appPackage"    # Ljava/lang/String;
    .param p6, "_label"    # Ljava/lang/String;
    .param p7, "_src"    # Ljava/lang/String;
    .param p8, "_srcBig"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 24
    iput p1, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->id:I

    .line 25
    iput p2, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->ownerID:I

    .line 26
    iput-object p3, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->appName:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->appPackage:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->caption:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->label:Ljava/lang/String;

    .line 30
    iput-object p7, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->src:Ljava/lang/String;

    .line 31
    iput-object p8, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->srcBig:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "in"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 94
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->id:I

    .line 95
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->ownerID:I

    .line 96
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->appName:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->caption:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->appPackage:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->label:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->src:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->srcBig:Ljava/lang/String;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/utils/Serializer;Lcom/vkcoffee/android/attachments/ChronicleAttachment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/utils/Serializer;
    .param p2, "x1"    # Lcom/vkcoffee/android/attachments/ChronicleAttachment$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/ChronicleAttachment;-><init>(Lcom/vkcoffee/android/utils/Serializer;)V

    return-void
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    const v0, 0x7f100146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 91
    return-void
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v3, 0x7f100147

    .line 36
    const v1, 0x7f030037

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f100116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->srcBig:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-static {p0}, Lcom/vkcoffee/android/attachments/ChronicleAttachment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/attachments/ChronicleAttachment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-object v0

    .line 39
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->srcBig:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->srcBig:Ljava/lang/String;

    .line 80
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "B|7|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->src:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$getFullView$196(Landroid/view/View;)V
    .locals 7
    .param p1, "view1"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->appPackage:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Global;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vk.action.OPEN_SECRET_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->appPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string/jumbo v2, "SECRET_MESSAGE_ID"

    iget v3, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    const-string/jumbo v2, "SECRET_MESSAGE_OWNER_ID"

    iget v3, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->ownerID:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 49
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "market://details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->appPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->appPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 65
    iget v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->id:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 66
    iget v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->ownerID:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 67
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->caption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->appPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->src:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->srcBig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    .line 85
    const v0, 0x7f100146

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    return-void
.end method
