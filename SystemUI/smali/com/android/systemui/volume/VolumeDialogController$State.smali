.class public final Lcom/android/systemui/volume/VolumeDialogController$State;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field public static NO_ACTIVE_STREAM:I


# instance fields
.field public activeStream:I

.field public effectsSuppressor:Landroid/content/ComponentName;

.field public effectsSuppressorName:Ljava/lang/String;

.field public ringerModeExternal:I

.field public ringerModeInternal:I

.field public final states:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/volume/VolumeDialogController$StreamState;",
            ">;"
        }
    .end annotation
.end field

.field public zenMode:I

.field public zenModeConfig:Landroid/service/notification/ZenModeConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 934
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/volume/VolumeDialogController$State;->NO_ACTIVE_STREAM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 944
    sget v0, Lcom/android/systemui/volume/VolumeDialogController$State;->NO_ACTIVE_STREAM:I

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    return-void
.end method

.method private static sep(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "indent"    # I

    .prologue
    .line 992
    if-lez p1, :cond_0

    .line 993
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 994
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 995
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 994
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 998
    .end local v0    # "i":I
    :cond_0
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1000
    :cond_1
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/volume/VolumeDialogController$State;
    .locals 5

    .prologue
    .line 947
    new-instance v1, Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-direct {v1}, Lcom/android/systemui/volume/VolumeDialogController$State;-><init>()V

    .line 948
    .local v1, "rt":Lcom/android/systemui/volume/VolumeDialogController$State;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 949
    iget-object v3, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->copy()Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 948
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 951
    :cond_0
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeExternal:I

    iput v2, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeExternal:I

    .line 952
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    iput v2, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    .line 953
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    iput v2, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    .line 954
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 955
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    .line 956
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenModeConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenModeConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->zenModeConfig:Landroid/service/notification/ZenModeConfig;

    .line 957
    :cond_2
    iget v2, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    iput v2, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    .line 958
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogController$State;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 6
    .param p1, "indent"    # I

    .prologue
    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 968
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-lez p1, :cond_0

    invoke-static {v1, p1}, Lcom/android/systemui/volume/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    .line 969
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 970
    if-lez v0, :cond_1

    .line 971
    invoke-static {v1, p1}, Lcom/android/systemui/volume/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    .line 973
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 974
    .local v3, "stream":I
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 975
    .local v2, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v3}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 978
    iget-boolean v4, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-eqz v4, :cond_2

    const-string v4, " [MUTED]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 980
    .end local v2    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v3    # "stream":I
    :cond_3
    invoke-static {v1, p1}, Lcom/android/systemui/volume/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v4, "ringerModeExternal:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeExternal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 981
    invoke-static {v1, p1}, Lcom/android/systemui/volume/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v4, "ringerModeInternal:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 982
    invoke-static {v1, p1}, Lcom/android/systemui/volume/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v4, "zenMode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 983
    invoke-static {v1, p1}, Lcom/android/systemui/volume/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v4, "effectsSuppressor:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 984
    invoke-static {v1, p1}, Lcom/android/systemui/volume/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v4, "effectsSuppressorName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    invoke-static {v1, p1}, Lcom/android/systemui/volume/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v4, "zenModeConfig:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->zenModeConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 986
    invoke-static {v1, p1}, Lcom/android/systemui/volume/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    const-string v4, "activeStream:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 987
    if-lez p1, :cond_4

    invoke-static {v1, p1}, Lcom/android/systemui/volume/VolumeDialogController$State;->sep(Ljava/lang/StringBuilder;I)V

    .line 988
    :cond_4
    const/16 v4, 0x7d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
