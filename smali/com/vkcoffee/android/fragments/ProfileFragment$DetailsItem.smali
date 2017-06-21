.class public Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailsItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bgType:I

.field public content:Ljava/lang/String;

.field public fallbackIntent:Landroid/content/Intent;

.field public image:Ljava/lang/String;

.field public intent:Landroid/content/Intent;

.field public isHeader:Z

.field public parsedContent:Ljava/lang/CharSequence;

.field public subtitle:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 762
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 770
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 815
    const/4 v0, 0x1

    .line 816
    .local v0, "z":Z
    const/4 v1, 0x1

    iput v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->bgType:I

    .line 817
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->title:Ljava/lang/String;

    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->content:Ljava/lang/String;

    .line 819
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->subtitle:Ljava/lang/String;

    .line 820
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_0

    .line 821
    const/4 v0, 0x0

    .line 823
    :cond_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->isHeader:Z

    .line 824
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->bgType:I

    .line 825
    const-class v1, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->intent:Landroid/content/Intent;

    .line 826
    const-class v1, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->fallbackIntent:Landroid/content/Intent;

    .line 827
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->image:Ljava/lang/String;

    .line 828
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 796
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "href"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 792
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Ljava/lang/String;)V

    .line 793
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;
    .param p4, "isHeader"    # Z
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "image"    # Ljava/lang/String;

    .prologue
    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    const/4 v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->bgType:I

    .line 783
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->content:Ljava/lang/String;

    .line 784
    iput-object p5, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->intent:Landroid/content/Intent;

    .line 785
    iput-object p6, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->image:Ljava/lang/String;

    .line 786
    iput-boolean p4, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->isHeader:Z

    .line 787
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->subtitle:Ljava/lang/String;

    .line 788
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->title:Ljava/lang/String;

    .line 789
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 800
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 804
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 806
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->subtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 807
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->isHeader:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 808
    iget v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->bgType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 809
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 810
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->fallbackIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 811
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$DetailsItem;->image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 812
    return-void

    :cond_0
    move v0, v1

    .line 807
    goto :goto_0
.end method
