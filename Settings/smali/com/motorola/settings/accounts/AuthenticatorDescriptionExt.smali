.class public Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
.super Ljava/lang/Object;
.source "AuthenticatorDescriptionExt.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accountDisplayName:Ljava/lang/String;

.field public final editSettingActivity:Ljava/lang/String;

.field public final isAccountHidden:Z

.field public final isAuthenticatorHidden:Z

.field public final isRemoveAllowed:Z

.field public final showSyncOption:Z

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt$1;

    invoke-direct {v0}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt$1;-><init>()V

    sput-object v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->type:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAccountHidden:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAuthenticatorHidden:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->showSyncOption:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isRemoveAllowed:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->accountDisplayName:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->editSettingActivity:Ljava/lang/String;

    .line 85
    return-void

    :cond_0
    move v0, v2

    .line 79
    goto :goto_0

    :cond_1
    move v0, v2

    .line 80
    goto :goto_1

    :cond_2
    move v0, v2

    .line 81
    goto :goto_2

    :cond_3
    move v1, v2

    .line 82
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->type:Ljava/lang/String;

    .line 69
    iput-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAccountHidden:Z

    .line 70
    iput-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAuthenticatorHidden:Z

    .line 71
    iput-boolean v1, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->showSyncOption:Z

    .line 72
    iput-boolean v1, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isRemoveAllowed:Z

    .line 73
    iput-object v2, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->accountDisplayName:Ljava/lang/String;

    .line 74
    iput-object v2, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->editSettingActivity:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isHidden"    # Z
    .param p3, "isAuthHidden"    # Z
    .param p4, "syncAvailable"    # Z
    .param p5, "isRemoveAllowed"    # Z
    .param p6, "accountDisplayName"    # Ljava/lang/String;
    .param p7, "editSettingActivity"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->type:Ljava/lang/String;

    .line 59
    iput-boolean p2, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAccountHidden:Z

    .line 60
    iput-boolean p3, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAuthenticatorHidden:Z

    .line 61
    iput-boolean p4, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->showSyncOption:Z

    .line 62
    iput-boolean p5, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isRemoveAllowed:Z

    .line 63
    iput-object p6, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->accountDisplayName:Ljava/lang/String;

    .line 64
    iput-object p7, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->editSettingActivity:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static newKey(Ljava/lang/String;)Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 88
    if-nez p0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    new-instance v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    invoke-direct {v0, p0}, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 105
    if-ne p1, p0, :cond_0

    .line 106
    const/4 v1, 0x1

    .line 110
    :goto_0
    return v1

    .line 107
    :cond_0
    instance-of v1, p1, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    if-nez v1, :cond_1

    .line 108
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 109
    check-cast v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;

    .line 110
    .local v0, "other":Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;
    iget-object v1, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->type:Ljava/lang/String;

    iget-object v2, v0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAccountHidden:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isAuthenticatorHidden:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->showSyncOption:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-boolean v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->isRemoveAllowed:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->accountDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/motorola/settings/accounts/AuthenticatorDescriptionExt;->editSettingActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return-void

    :cond_0
    move v0, v2

    .line 116
    goto :goto_0

    :cond_1
    move v0, v2

    .line 117
    goto :goto_1

    :cond_2
    move v0, v2

    .line 118
    goto :goto_2

    :cond_3
    move v1, v2

    .line 119
    goto :goto_3
.end method
