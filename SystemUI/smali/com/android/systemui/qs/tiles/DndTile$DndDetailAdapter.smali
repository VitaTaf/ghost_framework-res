.class final Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
.super Ljava/lang/Object;
.source "DndTile.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DndTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DndDetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;Lcom/android/systemui/qs/tiles/DndTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/tiles/DndTile;
    .param p2, "x1"    # Lcom/android/systemui/qs/tiles/DndTile$1;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 184
    if-eqz p2, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/volume/ZenModePanel;

    move-object v0, v1

    .line 187
    .local v0, "zmp":Lcom/android/systemui/volume/ZenModePanel;
    :goto_0
    if-nez p2, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    # getter for: Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$800(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->init(Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    .line 189
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/ZenModePanel;->setEmbedded(Z)V

    .line 190
    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/ZenModePanel;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 192
    :cond_0
    return-object v0

    .line 184
    .end local v0    # "zmp":Lcom/android/systemui/volume/ZenModePanel;
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0f0138

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/ZenModePanel;

    move-object v0, v1

    goto :goto_0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 171
    # getter for: Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;
    invoke-static {}, Lcom/android/systemui/qs/tiles/DndTile;->access$700()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 161
    const v0, 0x7f0c0275

    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    # getter for: Lcom/android/systemui/qs/tiles/DndTile;->mState:Lcom/android/systemui/qs/QSTile$State;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$600(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/qs/tiles/DndTile;->mShowingDetail:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$902(Lcom/android/systemui/qs/tiles/DndTile;Z)Z

    .line 198
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/qs/tiles/DndTile;->mShowingDetail:Z
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->access$902(Lcom/android/systemui/qs/tiles/DndTile;Z)Z

    .line 203
    return-void
.end method

.method public setToggleState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x0

    .line 176
    if-nez p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    # getter for: Lcom/android/systemui/qs/tiles/DndTile;->mController:Lcom/android/systemui/statusbar/policy/ZenModeController;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->access$800(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setZen(I)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->showDetail(Z)V

    .line 180
    :cond_0
    return-void
.end method
