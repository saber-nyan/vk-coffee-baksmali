.class public Lcom/vkcoffee/android/attachments/WikiAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "WikiAttachment.java"


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/WikiAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field oid:I

.field pid:I

.field section:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/vkcoffee/android/attachments/WikiAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/WikiAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/WikiAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "oid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/WikiAttachment;->title:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/vkcoffee/android/attachments/WikiAttachment;->section:Ljava/lang/String;

    .line 25
    iput p3, p0, Lcom/vkcoffee/android/attachments/WikiAttachment;->oid:I

    .line 26
    iput p4, p0, Lcom/vkcoffee/android/attachments/WikiAttachment;->pid:I

    .line 27
    return-void
.end method


# virtual methods
.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/attachments/WikiAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 55
    if-nez p2, :cond_0

    const-string/jumbo v1, "common"

    invoke-static {p1, v1}, Lcom/vkcoffee/android/attachments/WikiAttachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "v":Landroid/view/View;
    :goto_0
    const v1, 0x7f10014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f01000b

    invoke-static {p1, v2}, Lcom/vkcoffee/android/ViewUtils;->getResFromTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    const v1, 0x7f10013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/WikiAttachment;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v1, 0x7f10013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f080081

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 60
    invoke-static {p0}, Lcom/vkcoffee/android/attachments/WikiAttachment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/attachments/WikiAttachment;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-object v0

    .end local v0    # "v":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .line 55
    goto :goto_0
.end method

.method synthetic lambda$getViewForList$224(Landroid/view/View;)V
    .locals 3
    .param p1, "v1"    # Landroid/view/View;

    .prologue
    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "oid"

    iget v2, p0, Lcom/vkcoffee/android/attachments/WikiAttachment;->oid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string/jumbo v1, "pid"

    iget v2, p0, Lcom/vkcoffee/android/attachments/WikiAttachment;->pid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/WikiAttachment;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v1, "section"

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/WikiAttachment;->section:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-class v1, Lcom/vkcoffee/android/fragments/WikiViewFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public overrideLayoutParams()Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 1
    .param p1, "p"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/WikiAttachment;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/WikiAttachment;->section:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 33
    iget v0, p0, Lcom/vkcoffee/android/attachments/WikiAttachment;->oid:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 34
    iget v0, p0, Lcom/vkcoffee/android/attachments/WikiAttachment;->pid:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 35
    return-void
.end method
