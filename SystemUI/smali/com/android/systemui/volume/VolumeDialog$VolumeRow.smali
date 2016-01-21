.class Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeRow"
.end annotation


# instance fields
.field private anim:Landroid/animation/ObjectAnimator;

.field private animTargetProgress:I

.field private cachedExpandButtonRes:I

.field private cachedIconRes:I

.field private cachedShowHeaders:Z

.field private header:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageButton;

.field private iconMuteRes:I

.field private iconRes:I

.field private iconState:I

.field private important:Z

.field private lastAudibleLevel:I

.field private requestedLevel:I

.field private settingsButton:Landroid/widget/ImageButton;

.field private slider:Landroid/widget/SeekBar;

.field private space:Landroid/view/View;

.field private ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;

.field private stream:I

.field private tracking:Z

.field private userAttempt:J

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1061
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedShowHeaders:Z

    .line 1065
    iput v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->lastAudibleLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/VolumeDialog$1;

    .prologue
    .line 1044
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->space:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->space:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->important:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Z

    .prologue
    .line 1044
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->important:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->header:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/widget/SeekBar;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->slider:Landroid/widget/SeekBar;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconState:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1044
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconState:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Lcom/android/systemui/volume/VolumeDialogController$StreamState;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->lastAudibleLevel:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1044
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->lastAudibleLevel:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget-wide v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->userAttempt:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # J

    .prologue
    .line 1044
    iput-wide p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->userAttempt:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedExpandButtonRes:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1044
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedExpandButtonRes:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedShowHeaders:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Z

    .prologue
    .line 1044
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedShowHeaders:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedIconRes:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1044
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->cachedIconRes:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->tracking:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Z

    .prologue
    .line 1044
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->tracking:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->animTargetProgress:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1044
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->animTargetProgress:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->requestedLevel:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1044
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->requestedLevel:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # Landroid/widget/ImageButton;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->settingsButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1044
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->stream:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconRes:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1044
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconRes:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;

    .prologue
    .line 1044
    iget v0, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/volume/VolumeDialog$VolumeRow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeDialog$VolumeRow;
    .param p1, "x1"    # I

    .prologue
    .line 1044
    iput p1, p0, Lcom/android/systemui/volume/VolumeDialog$VolumeRow;->iconMuteRes:I

    return p1
.end method
