.class public abstract Lme/grishka/appkit/views/UsableRecyclerView$Adapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "UsableRecyclerView.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/grishka/appkit/views/UsableRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;",
        ">",
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<TVH;>;",
        "Lme/grishka/appkit/imageloader/RecyclerViewImagesAdapter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 407
    .local p0, "this":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;, "Lme/grishka/appkit/views/UsableRecyclerView$Adapter<TVH;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageCountForItem(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 410
    .local p0, "this":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;, "Lme/grishka/appkit/views/UsableRecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 415
    .local p0, "this":Lme/grishka/appkit/views/UsableRecyclerView$Adapter;, "Lme/grishka/appkit/views/UsableRecyclerView$Adapter<TVH;>;"
    const/4 v0, 0x0

    return-object v0
.end method
