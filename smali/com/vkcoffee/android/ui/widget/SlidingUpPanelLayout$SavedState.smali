.class Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SlidingUpPanelLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1077
    new-instance v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1063
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1065
    :try_start_0
    const-class v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    :goto_0
    return-void

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->COLLAPSED:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    iput-object v1, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$1;

    .prologue
    .line 1055
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 1059
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1060
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1073
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1074
    iget-object v0, p0, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$SavedState;->mSlideState:Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/widget/SlidingUpPanelLayout$PanelState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1075
    return-void
.end method
