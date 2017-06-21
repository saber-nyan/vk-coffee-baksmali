.class public Lcom/vkcoffee/android/Link;
.super Ljava/lang/Object;
.source "Link.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/Link;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;

.field private displayText:Ljava/lang/CharSequence;

.field public final image_src:Ljava/lang/String;

.field public final thumb:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/vkcoffee/android/Link$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/Link$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/Link;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/Link;->url:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/Link;->title:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/Link;->description:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/Link;->image_src:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/Link;->thumb:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string/jumbo v2, "url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/Link;->url:Ljava/lang/String;

    .line 37
    const-string/jumbo v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/Link;->title:Ljava/lang/String;

    .line 38
    const-string/jumbo v2, "description"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/Link;->description:Ljava/lang/String;

    .line 39
    const-string/jumbo v2, "image_src"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/Link;->image_src:Ljava/lang/String;

    .line 42
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/Link;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    .local v1, "thumb":Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcom/vkcoffee/android/Link;->thumb:Ljava/lang/String;

    .line 47
    return-void

    .line 43
    .end local v1    # "thumb":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, ""

    .restart local v1    # "thumb":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayText()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 25
    iget-object v1, p0, Lcom/vkcoffee/android/Link;->displayText:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/Link;->title:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vkcoffee/android/Link;->title:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/vkcoffee/android/Link;->title:Ljava/lang/String;

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/vkcoffee/android/Link;->description:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v2, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 29
    .local v0, "spannable":Landroid/text/Spannable;
    new-instance v1, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;

    sget-object v2, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/utils/TypefaceSpanAssets;-><init>(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/vkcoffee/android/Link;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0, v1, v4, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 30
    iput-object v0, p0, Lcom/vkcoffee/android/Link;->displayText:Ljava/lang/CharSequence;

    .line 32
    .end local v0    # "spannable":Landroid/text/Spannable;
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/Link;->displayText:Ljava/lang/CharSequence;

    return-object v1

    .line 27
    :cond_1
    const-string/jumbo v1, "\n"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/Link;->description:Ljava/lang/String;

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/Link;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/Link;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/Link;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/vkcoffee/android/Link;->image_src:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/vkcoffee/android/Link;->thumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return-void
.end method
