.class Lcom/android/server/policy/GlobalActions$8;
.super Landroid/telephony/PhoneStateListener;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    .prologue
    .line 994
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v3, 0x3

    .line 997
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHasTelephony:Z
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$000(Lcom/android/server/policy/GlobalActions;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1001
    :goto_0
    return-void

    .line 998
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    .line 999
    .local v0, "inAirplaneMode":Z
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_2
    # setter for: Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v2, v1}, Lcom/android/server/policy/GlobalActions;->access$402(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$ToggleAction$State;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 1000
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$900(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 998
    .end local v0    # "inAirplaneMode":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 999
    .restart local v0    # "inAirplaneMode":Z
    :cond_2
    sget-object v1, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_2
.end method
