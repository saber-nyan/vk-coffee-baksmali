.class public Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;
.super Ljava/lang/Object;
.source "GroupsGetSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/groups/GroupsGetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public access:I

.field public address:Ljava/lang/String;

.field public audio:I

.field public categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;",
            ">;"
        }
    .end annotation
.end field

.field public contacts:I

.field public description:Ljava/lang/String;

.field public docs:I

.field public endTime:I

.field public events:I

.field public links:I

.field public photos:I

.field public place:Lcom/vkcoffee/android/GeoPlace;

.field public places:I

.field public startTime:I

.field public subcategory:I

.field public subject:I

.field public title:Ljava/lang/String;

.field public topics:I

.field public video:I

.field public wall:I

.field public website:Ljava/lang/String;

.field public wiki:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->title:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->description:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->address:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->website:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->wall:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->photos:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->video:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->audio:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->docs:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->topics:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->wiki:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->events:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->places:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->contacts:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->links:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->access:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->subject:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->subcategory:I

    .line 190
    sget-object v0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$Category;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->categories:Ljava/util/List;

    .line 191
    const-class v0, Lcom/vkcoffee/android/GeoPlace;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/GeoPlace;

    iput-object v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->place:Lcom/vkcoffee/android/GeoPlace;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->startTime:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->endTime:I

    .line 194
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->website:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->wall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->photos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->video:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->audio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->docs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->topics:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->wiki:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->events:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->places:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->contacts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->links:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->access:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->subject:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->subcategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->categories:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 163
    iget-object v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->place:Lcom/vkcoffee/android/GeoPlace;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 164
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->startTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->endTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return-void
.end method
