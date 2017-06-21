.class abstract Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;
.super Ljava/lang/Object;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "InfoItem"
.end annotation


# instance fields
.field public backgroundType:I

.field public dividerAfter:Z

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$InfoItem;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-void
.end method


# virtual methods
.method public abstract createViewHolder()Lcom/vkcoffee/android/BindableViewHolder;
.end method

.method public getImageCount()I
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 386
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getType()I
.end method
