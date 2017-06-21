.class Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;
.super Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverviewInfoItem"
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field public onClick:Ljava/lang/Runnable;

.field public photos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;ILjava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "icon"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "onClick"    # Ljava/lang/Runnable;

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 1034
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;)V

    .line 1030
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->photos:Ljava/util/ArrayList;

    .line 1035
    invoke-virtual {p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 1036
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->text:Ljava/lang/CharSequence;

    .line 1037
    iput-object p4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->onClick:Ljava/lang/Runnable;

    .line 1038
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 1
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "onClick"    # Ljava/lang/Runnable;

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 1041
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;)V

    .line 1030
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->photos:Ljava/util/ArrayList;

    .line 1042
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 1043
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->text:Ljava/lang/CharSequence;

    .line 1044
    iput-object p4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->onClick:Ljava/lang/Runnable;

    .line 1045
    return-void
.end method


# virtual methods
.method public createViewHolder()Lcom/vkcoffee/android/BindableViewHolder;
    .locals 2

    .prologue
    .line 1052
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoViewHolder;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-object v0
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$OverviewInfoItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 1048
    const/16 v0, -0x17

    return v0
.end method
