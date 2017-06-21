.class public abstract Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;
.super Ljava/lang/Object;
.source "Serializer.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/vkcoffee/android/utils/Serializer$Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/utils/Serializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SerializableAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 55
    :try_start_0
    invoke-static {p1}, Lcom/vkcoffee/android/utils/Serializer;->get(Landroid/os/Parcel;)Lcom/vkcoffee/android/utils/Serializer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;->serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method
