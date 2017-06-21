.class final Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState$1;
.super Ljava/lang/Object;
.source "VkBottomSheetBehavior.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 678
    new-instance v0, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;

    invoke-direct {v0, p1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 683
    new-array v0, p1, [Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0, p1}, Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState$1;->newArray(I)[Lcom/vk/attachpicker/widget/VkBottomSheetBehavior$SavedState;

    move-result-object v0

    return-object v0
.end method
