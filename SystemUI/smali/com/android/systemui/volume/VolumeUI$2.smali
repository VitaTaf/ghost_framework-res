.class Lcom/android/systemui/volume/VolumeUI$2;
.super Ljava/lang/Object;
.source "VolumeUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeUI;->showServiceActivationDialog(Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;

.field final synthetic val$component:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeUI;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$2;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeUI$2;->val$component:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI$2;->this$0:Lcom/android/systemui/volume/VolumeUI;

    # getter for: Lcom/android/systemui/volume/VolumeUI;->mVolumeControllerService:Lcom/android/systemui/statusbar/ServiceMonitor;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumeUI;->access$900(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/statusbar/ServiceMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$2;->val$component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ServiceMonitor;->setComponent(Landroid/content/ComponentName;)V

    .line 174
    return-void
.end method
