.class Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;
.super Ljava/lang/Object;
.source "PhotoListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoLayoutInfo"
.end annotation


# instance fields
.field public height:I

.field public photo:Lcom/vkcoffee/android/Photo;

.field public scaledWidth:I

.field public spanSize:I

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;->this$0:Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/photos/PhotoListFragment$PhotoLayoutInfo;-><init>(Lcom/vkcoffee/android/fragments/photos/PhotoListFragment;)V

    return-void
.end method
