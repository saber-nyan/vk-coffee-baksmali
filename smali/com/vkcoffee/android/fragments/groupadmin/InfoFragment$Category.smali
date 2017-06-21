.class public Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;
.super Ljava/lang/Object;
.source "InfoFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:I

.field public subcategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 542
    new-instance v0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->id:I

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->title:Ljava/lang/String;

    .line 538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->subcategories:Ljava/util/List;

    .line 539
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->subcategories:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 540
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 527
    iget v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->subcategories:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 530
    return-void
.end method
