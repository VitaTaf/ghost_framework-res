.class Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PhoneWindow$DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallbackWrapper"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/ActionMode$Callback;

.field final synthetic this$1:Landroid/view/PhoneWindow$DecorView;


# direct methods
.method public constructor <init>(Landroid/view/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p2, "wrapped"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 3274
    iput-object p1, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3275
    iput-object p2, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    .line 3276
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3288
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3279
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 3292
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 3293
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    # getter for: Landroid/view/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/view/PhoneWindow$DecorView;->access$1500(Landroid/view/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3294
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    # getter for: Landroid/view/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;
    invoke-static {v1}, Landroid/view/PhoneWindow$DecorView;->access$2400(Landroid/view/PhoneWindow$DecorView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3295
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    # getter for: Landroid/view/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;
    invoke-static {v0}, Landroid/view/PhoneWindow$DecorView;->access$1500(Landroid/view/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3299
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    # getter for: Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/view/PhoneWindow$DecorView;->access$1400(Landroid/view/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3300
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    # getter for: Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/view/PhoneWindow$DecorView;->access$1400(Landroid/view/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 3302
    :cond_1
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    iget-object v0, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v0}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    iget-object v0, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v0}, Landroid/view/PhoneWindow;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3304
    :try_start_0
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    iget-object v0, v0, Landroid/view/PhoneWindow$DecorView;->this$0:Landroid/view/PhoneWindow;

    invoke-virtual {v0}, Landroid/view/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    # getter for: Landroid/view/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Landroid/view/PhoneWindow$DecorView;->access$300(Landroid/view/PhoneWindow$DecorView;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 3309
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    const/4 v1, 0x0

    # setter for: Landroid/view/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Landroid/view/PhoneWindow$DecorView;->access$302(Landroid/view/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 3310
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    invoke-virtual {v0}, Landroid/view/PhoneWindow$DecorView;->requestFitSystemWindows()V

    .line 3311
    return-void

    .line 3296
    :cond_3
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    # getter for: Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/view/PhoneWindow$DecorView;->access$1400(Landroid/view/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3297
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    # getter for: Landroid/view/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;
    invoke-static {v0}, Landroid/view/PhoneWindow$DecorView;->access$1400(Landroid/view/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_0

    .line 3305
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3283
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->this$1:Landroid/view/PhoneWindow$DecorView;

    invoke-virtual {v0}, Landroid/view/PhoneWindow$DecorView;->requestFitSystemWindows()V

    .line 3284
    iget-object v0, p0, Landroid/view/PhoneWindow$DecorView$ActionModeCallbackWrapper;->mWrapped:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
