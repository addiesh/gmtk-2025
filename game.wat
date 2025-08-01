(module $jam-f11ec188cc428c34.wasm
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (result f64)))
  (type (;4;) (func (param i32 i32 i32 i32 i32 i32 i32 i32)))
  (type (;5;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;6;) (func (param i32) (result i32)))
  (type (;7;) (func (param f64) (result f64)))
  (type (;8;) (func))
  (type (;9;) (func (param i32 i32 i32 i32 i32)))
  (type (;10;) (func (param i32)))
  (type (;11;) (func (param i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param f64 i32) (result f64)))
  (type (;14;) (func (result i32)))
  (import "addie" "getTime" (func $_ZN5metra3sys8get_time17h1f4f4ffe8a67506cE (type 3)))
  (import "addie" "draw" (func $_ZN5metra3sys4draw17h0a173a2f57d6c02cE (type 4)))
  (import "addie" "log" (func $_ZN5metra3sys3log17h3d0286cba4cdea4eE (type 5)))
  (func $_ZN5metra3run28_$u7b$$u7b$closure$u7d$$u7d$17h457f67e11478465aE (type 6) (param i32) (result i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 0
            i32.load8_u offset=9
            i32.const 3
            i32.eq
            br_if 0 (;@4;)
            local.get 0
            local.get 0
            i32.const 20
            i32.add
            local.get 0
            i32.load offset=16
            call_indirect (type 0)
            local.tee 2
            br_if 3 (;@1;)
            i32.const 0
            i32.load offset=1051576
            i32.const 3
            i32.gt_u
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 0
          local.set 2
          i32.const 0
          i32.load offset=1051576
          i32.const 2
          i32.lt_u
          br_if 2 (;@1;)
          local.get 1
          i64.const 0
          i64.store offset=64 align=4
          local.get 1
          i64.const 17179869185
          i64.store offset=56 align=4
          local.get 1
          i32.const 1048740
          i32.store offset=52
          local.get 1
          i32.const 5
          i32.store offset=48
          i32.const 0
          local.set 2
          local.get 1
          i32.const 0
          i32.store offset=28
          local.get 1
          i32.const 0
          i32.store offset=16
          local.get 1
          i64.const 1228360646657
          i64.store offset=8 align=4
          local.get 1
          i32.const 1048632
          i64.extend_i32_u
          i64.const 201863462912
          i64.or
          i64.store offset=32 align=4
          local.get 1
          i32.const 1051036
          i32.store offset=44
          local.get 1
          i32.const 1051036
          i64.extend_i32_u
          i64.const 21474836480
          i64.or
          i64.store offset=20 align=4
          local.get 1
          i32.const 2
          i32.store offset=40
          i32.const 0
          i32.load offset=1051100
          i32.const 1050108
          i32.const 0
          i32.load offset=1051116
          i32.const 2
          i32.eq
          local.tee 0
          select
          local.get 1
          i32.const 8
          i32.add
          i32.const 0
          i32.load offset=1051104
          i32.const 1050084
          local.get 0
          select
          i32.load offset=16
          call_indirect (type 1)
          br 2 (;@1;)
        end
        local.get 1
        i64.const 0
        i64.store offset=64 align=4
        local.get 1
        i64.const 17179869185
        i64.store offset=56 align=4
        local.get 1
        i32.const 1048768
        i32.store offset=52
        local.get 1
        i32.const 5
        i32.store offset=48
        local.get 1
        i32.const 4
        i32.store offset=40
        local.get 1
        i32.const 0
        i32.store offset=28
        local.get 1
        i32.const 0
        i32.store offset=16
        local.get 1
        i64.const 1258425417729
        i64.store offset=8 align=4
        local.get 1
        i32.const 1048632
        i64.extend_i32_u
        i64.const 201863462912
        i64.or
        i64.store offset=32 align=4
        local.get 1
        i32.const 1051036
        i32.store offset=44
        local.get 1
        i32.const 1051036
        i64.extend_i32_u
        i64.const 21474836480
        i64.or
        i64.store offset=20 align=4
        i32.const 0
        i32.load offset=1051100
        i32.const 1050108
        i32.const 0
        i32.load offset=1051116
        i32.const 2
        i32.eq
        local.tee 2
        select
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        i32.load offset=1051104
        i32.const 1050084
        local.get 2
        select
        i32.load offset=16
        call_indirect (type 1)
      end
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=9
        i32.const 3
        i32.eq
        br_if 0 (;@2;)
        i32.const 0
        i32.load offset=1051576
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        local.get 1
        i64.const 0
        i64.store offset=64 align=4
        local.get 1
        i64.const 17179869185
        i64.store offset=56 align=4
        local.get 1
        i32.const 1049072
        i32.store offset=52
        local.get 1
        i32.const 3
        i32.store offset=48
        local.get 1
        i32.const 4
        i32.store offset=40
        local.get 1
        i32.const 0
        i32.store offset=28
        local.get 1
        i32.const 0
        i32.store offset=16
        local.get 1
        i64.const 201863462913
        i64.store offset=8 align=4
        local.get 1
        i32.const 1049080
        i64.extend_i32_u
        i64.const 47244640256
        i64.or
        i64.store offset=32 align=4
        local.get 1
        i32.const 1049091
        i32.store offset=44
        local.get 1
        i32.const 1049091
        i64.extend_i32_u
        i64.const 12884901888
        i64.or
        i64.store offset=20 align=4
        i32.const 0
        i32.load offset=1051100
        i32.const 1050108
        i32.const 0
        i32.load offset=1051116
        i32.const 2
        i32.eq
        local.tee 2
        select
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        i32.load offset=1051104
        i32.const 1050084
        local.get 2
        select
        i32.load offset=16
        call_indirect (type 1)
      end
      local.get 0
      local.get 1
      i64.load offset=8
      i64.store
      local.get 0
      i32.const 3
      i32.store8 offset=9
      local.get 0
      local.get 1
      i32.load offset=2 align=2
      i32.store offset=10 align=2
      local.get 0
      i32.const 8
      i32.add
      local.get 1
      i32.const 8
      i32.add
      i32.const 8
      i32.add
      i32.load8_u
      i32.store8
      local.get 0
      i32.const 14
      i32.add
      local.get 1
      i32.const 2
      i32.add
      i32.const 4
      i32.add
      i32.load16_u
      i32.store16
      i32.const 0
      local.set 2
      block  ;; label = @2
        i32.const 0
        i32.load offset=1051576
        i32.const 3
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        i64.const 0
        i64.store offset=64 align=4
        local.get 1
        i64.const 17179869185
        i64.store offset=56 align=4
        local.get 1
        i32.const 1048836
        i32.store offset=52
        local.get 1
        i32.const 5
        i32.store offset=48
        local.get 1
        i32.const 4
        i32.store offset=40
        local.get 1
        i32.const 0
        i32.store offset=28
        local.get 1
        i32.const 0
        i32.store offset=16
        local.get 1
        i64.const 1267015352321
        i64.store offset=8 align=4
        local.get 1
        i32.const 1048632
        i64.extend_i32_u
        i64.const 201863462912
        i64.or
        i64.store offset=32 align=4
        local.get 1
        i32.const 1051036
        i32.store offset=44
        local.get 1
        i32.const 1051036
        i64.extend_i32_u
        i64.const 21474836480
        i64.or
        i64.store offset=20 align=4
        i32.const 0
        i32.load offset=1051100
        i32.const 1050108
        i32.const 0
        i32.load offset=1051116
        i32.const 2
        i32.eq
        local.tee 0
        select
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        i32.load offset=1051104
        i32.const 1050084
        local.get 0
        select
        i32.load offset=16
        call_indirect (type 1)
      end
      i32.const 0
      i32.load offset=1051576
      i32.const 3
      i32.le_u
      br_if 0 (;@1;)
      local.get 1
      i64.const 0
      i64.store offset=64 align=4
      local.get 1
      i64.const 17179869185
      i64.store offset=56 align=4
      local.get 1
      i32.const 1048876
      i32.store offset=52
      local.get 1
      i32.const 5
      i32.store offset=48
      local.get 1
      i32.const 4
      i32.store offset=40
      i32.const 0
      local.set 2
      local.get 1
      i32.const 0
      i32.store offset=28
      local.get 1
      i32.const 0
      i32.store offset=16
      local.get 1
      i64.const 1271310319617
      i64.store offset=8 align=4
      local.get 1
      i32.const 1048632
      i64.extend_i32_u
      i64.const 201863462912
      i64.or
      i64.store offset=32 align=4
      local.get 1
      i32.const 1051036
      i32.store offset=44
      local.get 1
      i32.const 1051036
      i64.extend_i32_u
      i64.const 21474836480
      i64.or
      i64.store offset=20 align=4
      i32.const 0
      i32.load offset=1051100
      i32.const 1050108
      i32.const 0
      i32.load offset=1051116
      i32.const 2
      i32.eq
      local.tee 0
      select
      local.get 1
      i32.const 8
      i32.add
      i32.const 0
      i32.load offset=1051104
      i32.const 1050084
      local.get 0
      select
      i32.load offset=16
      call_indirect (type 1)
    end
    local.get 1
    i32.const 80
    i32.add
    global.set $__stack_pointer
    local.get 2)
  (func $_ZN3jam6update17hb2c94220c96c0545E (type 0) (param i32 i32) (result i32)
    (local i32 f64 i32 i32 i32 i32 i32 f64 f64 f64 i32 i32)
    i32.const 0
    local.set 2
    call $_ZN5metra3sys8get_time17h1f4f4ffe8a67506cE
    local.set 3
    i32.const 1
    local.set 4
    i32.const 0
    local.set 5
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 5
          i32.const 1049120
          i32.add
          i32.load8_s
          local.tee 6
          i32.const -1
          i32.le_s
          br_if 0 (;@3;)
          local.get 5
          i32.const 1
          i32.add
          local.set 5
          local.get 6
          i32.const 255
          i32.and
          local.set 6
          br 1 (;@2;)
        end
        local.get 6
        i32.const 31
        i32.and
        local.set 7
        local.get 5
        i32.const 1049121
        i32.add
        i32.load8_u
        i32.const 63
        i32.and
        local.set 8
        block  ;; label = @3
          local.get 6
          i32.const -33
          i32.gt_u
          br_if 0 (;@3;)
          local.get 7
          i32.const 6
          i32.shl
          local.get 8
          i32.or
          local.set 6
          local.get 5
          i32.const 2
          i32.add
          local.set 5
          br 1 (;@2;)
        end
        local.get 8
        i32.const 6
        i32.shl
        local.get 5
        i32.const 1049122
        i32.add
        i32.load8_u
        i32.const 63
        i32.and
        i32.or
        local.set 8
        block  ;; label = @3
          local.get 6
          i32.const -16
          i32.ge_u
          br_if 0 (;@3;)
          local.get 8
          local.get 7
          i32.const 12
          i32.shl
          i32.or
          local.set 6
          local.get 5
          i32.const 3
          i32.add
          local.set 5
          br 1 (;@2;)
        end
        local.get 8
        i32.const 6
        i32.shl
        local.get 5
        i32.const 1049123
        i32.add
        i32.load8_u
        i32.const 63
        i32.and
        i32.or
        local.get 7
        i32.const 18
        i32.shl
        i32.const 1835008
        i32.and
        i32.or
        local.set 6
        local.get 5
        i32.const 4
        i32.add
        local.set 5
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  i32.const -10
                  i32.add
                  br_table 0 (;@7;) 1 (;@6;) 1 (;@6;) 4 (;@3;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 1 (;@6;) 2 (;@5;) 1 (;@6;)
                end
                local.get 4
                i32.const 1
                i32.add
                local.set 4
                i32.const 0
                local.set 2
                br 3 (;@3;)
              end
              local.get 6
              i32.const -9
              i32.add
              i32.const 5
              i32.lt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  i32.const 128
                  i32.lt_u
                  br_if 0 (;@7;)
                  i32.const 1376728
                  local.set 7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 6
                        i32.const 8
                        i32.shr_u
                        local.tee 8
                        i32.const -22
                        i32.add
                        br_table 4 (;@6;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 2 (;@8;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 6 (;@4;) 1 (;@9;) 0 (;@10;)
                      end
                      local.get 8
                      br_if 5 (;@4;)
                      local.get 6
                      i32.const 255
                      i32.and
                      i32.const 1049528
                      i32.add
                      i32.load8_u
                      i32.const 1
                      i32.and
                      i32.eqz
                      br_if 5 (;@4;)
                      br 4 (;@5;)
                    end
                    local.get 6
                    i32.const 12288
                    i32.ne
                    br_if 4 (;@4;)
                    br 3 (;@5;)
                  end
                  local.get 6
                  i32.const 255
                  i32.and
                  i32.const 1049528
                  i32.add
                  i32.load8_u
                  i32.const 2
                  i32.and
                  i32.eqz
                  br_if 3 (;@4;)
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  local.get 6
                  i32.const -97
                  i32.add
                  i32.const 26
                  i32.lt_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 6
                    i32.const -48
                    i32.add
                    i32.const 10
                    i32.lt_u
                    br_if 0 (;@8;)
                    i32.const 1376728
                    local.set 7
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              local.get 6
                              i32.const -33
                              i32.add
                              br_table 0 (;@13;) 9 (;@4;) 1 (;@12;) 9 (;@4;) 9 (;@4;) 9 (;@4;) 9 (;@4;) 9 (;@4;) 9 (;@4;) 2 (;@11;) 9 (;@4;) 4 (;@9;) 9 (;@4;) 3 (;@10;) 9 (;@4;)
                            end
                            i32.const 553976109
                            local.set 7
                            br 8 (;@4;)
                          end
                          i32.const 588120500
                          local.set 7
                          br 7 (;@4;)
                        end
                        i32.const 705561026
                        local.set 7
                        br 6 (;@4;)
                      end
                      i32.const 772014544
                      local.set 7
                      br 5 (;@4;)
                    end
                    i32.const 738460116
                    local.set 7
                    br 4 (;@4;)
                  end
                  local.get 6
                  i32.const 15
                  i32.and
                  i32.const 2
                  i32.shl
                  i32.const 1048992
                  i32.add
                  i32.load align=2
                  local.set 7
                  br 3 (;@4;)
                end
                local.get 6
                i32.const 159
                i32.add
                i32.const 255
                i32.and
                i32.const 2
                i32.shl
                i32.const 1048884
                i32.add
                i32.load align=2
                local.set 7
                br 2 (;@4;)
              end
              local.get 6
              i32.const 5760
              i32.ne
              br_if 1 (;@4;)
            end
            local.get 2
            i32.const 6
            i32.add
            local.set 2
            br 1 (;@3;)
          end
          local.get 7
          i32.const 16
          i32.shr_u
          i32.const 255
          i32.and
          local.get 2
          i32.add
          local.set 2
          local.get 5
          i32.const 25
          i32.ne
          br_if 2 (;@1;)
          br 1 (;@2;)
        end
        local.get 5
        i32.const 25
        i32.ne
        br_if 1 (;@1;)
      end
    end
    f64.const 0x1p+0 (;=1;)
    local.set 9
    block  ;; label = @1
      local.get 3
      f64.const 0x1p+0 (;=1;)
      f64.add
      local.get 0
      f64.load
      local.tee 10
      f64.sub
      f64.const 0x1.77p+10 (;=1500;)
      f64.div
      local.tee 11
      f64.const 0x1p+0 (;=1;)
      f64.ge
      br_if 0 (;@1;)
      f64.const 0x1p+0 (;=1;)
      local.get 11
      f64.const -0x1.4p+3 (;=-10;)
      f64.mul
      call $_ZN4libm4math3pow3pow17he7a130a7fa29e219E
      f64.sub
      local.set 9
    end
    local.get 2
    i32.const 65535
    i32.and
    f64.convert_i32_u
    local.tee 11
    f64.const 0x1p+3 (;=8;)
    f64.add
    local.get 9
    f64.mul
    local.set 9
    i32.const 0
    local.set 8
    i32.const 0
    local.set 6
    loop  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.const 1049120
          i32.add
          i32.load8_s
          local.tee 5
          i32.const -1
          i32.le_s
          br_if 0 (;@3;)
          local.get 6
          i32.const 1
          i32.add
          local.set 6
          local.get 5
          i32.const 255
          i32.and
          local.set 5
          br 1 (;@2;)
        end
        local.get 5
        i32.const 31
        i32.and
        local.set 2
        local.get 6
        i32.const 1049121
        i32.add
        i32.load8_u
        i32.const 63
        i32.and
        local.set 7
        block  ;; label = @3
          local.get 5
          i32.const -33
          i32.gt_u
          br_if 0 (;@3;)
          local.get 2
          i32.const 6
          i32.shl
          local.get 7
          i32.or
          local.set 5
          local.get 6
          i32.const 2
          i32.add
          local.set 6
          br 1 (;@2;)
        end
        local.get 7
        i32.const 6
        i32.shl
        local.get 6
        i32.const 1049122
        i32.add
        i32.load8_u
        i32.const 63
        i32.and
        i32.or
        local.set 7
        block  ;; label = @3
          local.get 5
          i32.const -16
          i32.ge_u
          br_if 0 (;@3;)
          local.get 7
          local.get 2
          i32.const 12
          i32.shl
          i32.or
          local.set 5
          local.get 6
          i32.const 3
          i32.add
          local.set 6
          br 1 (;@2;)
        end
        local.get 7
        i32.const 6
        i32.shl
        local.get 6
        i32.const 1049123
        i32.add
        i32.load8_u
        i32.const 63
        i32.and
        i32.or
        local.get 2
        i32.const 18
        i32.shl
        i32.const 1835008
        i32.and
        i32.or
        local.set 5
        local.get 6
        i32.const 4
        i32.add
        local.set 6
      end
      local.get 8
      local.get 5
      i32.const 10
      i32.eq
      i32.add
      local.set 8
      local.get 6
      i32.const 25
      i32.ne
      br_if 0 (;@1;)
    end
    local.get 9
    local.get 11
    f64.sub
    i32.trunc_sat_f64_s
    local.set 12
    i32.const 0
    local.set 2
    i32.const 0
    local.set 5
    loop  ;; label = @1
      local.get 8
      local.get 4
      i32.sub
      i32.const 21
      i32.mul
      i32.const 174
      i32.add
      local.set 0
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const 1049120
            i32.add
            i32.load8_s
            local.tee 6
            i32.const -1
            i32.le_s
            br_if 0 (;@4;)
            local.get 5
            i32.const 1
            i32.add
            local.set 5
            local.get 6
            i32.const 255
            i32.and
            local.set 6
            br 1 (;@3;)
          end
          local.get 6
          i32.const 31
          i32.and
          local.set 7
          local.get 5
          i32.const 1049121
          i32.add
          i32.load8_u
          i32.const 63
          i32.and
          local.set 13
          block  ;; label = @4
            local.get 6
            i32.const -33
            i32.gt_u
            br_if 0 (;@4;)
            local.get 7
            i32.const 6
            i32.shl
            local.get 13
            i32.or
            local.set 6
            local.get 5
            i32.const 2
            i32.add
            local.set 5
            br 1 (;@3;)
          end
          local.get 13
          i32.const 6
          i32.shl
          local.get 5
          i32.const 1049122
          i32.add
          i32.load8_u
          i32.const 63
          i32.and
          i32.or
          local.set 13
          block  ;; label = @4
            local.get 6
            i32.const -16
            i32.ge_u
            br_if 0 (;@4;)
            local.get 13
            local.get 7
            i32.const 12
            i32.shl
            i32.or
            local.set 6
            local.get 5
            i32.const 3
            i32.add
            local.set 5
            br 1 (;@3;)
          end
          local.get 13
          i32.const 6
          i32.shl
          local.get 5
          i32.const 1049123
          i32.add
          i32.load8_u
          i32.const 63
          i32.and
          i32.or
          local.get 7
          i32.const 18
          i32.shl
          i32.const 1835008
          i32.and
          i32.or
          local.set 6
          local.get 5
          i32.const 4
          i32.add
          local.set 5
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 6
                      i32.const -10
                      i32.add
                      br_table 0 (;@9;) 1 (;@8;) 1 (;@8;) 3 (;@6;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 1 (;@8;) 2 (;@7;) 1 (;@8;)
                    end
                    local.get 8
                    i32.const -1
                    i32.add
                    local.set 8
                    i32.const 0
                    local.set 2
                    br 2 (;@6;)
                  end
                  local.get 6
                  i32.const -9
                  i32.add
                  i32.const 5
                  i32.lt_u
                  br_if 0 (;@7;)
                  local.get 6
                  i32.const 128
                  i32.lt_u
                  br_if 2 (;@5;)
                  i32.const 1376728
                  local.set 7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 6
                          i32.const 8
                          i32.shr_u
                          local.tee 13
                          i32.const -22
                          i32.add
                          br_table 1 (;@10;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 3 (;@8;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 2 (;@9;) 0 (;@11;)
                        end
                        local.get 13
                        br_if 6 (;@4;)
                        local.get 6
                        i32.const 255
                        i32.and
                        i32.const 1049528
                        i32.add
                        i32.load8_u
                        i32.const 1
                        i32.and
                        br_if 3 (;@7;)
                        br 6 (;@4;)
                      end
                      local.get 6
                      i32.const 5760
                      i32.eq
                      br_if 2 (;@7;)
                      br 5 (;@4;)
                    end
                    local.get 6
                    i32.const 12288
                    i32.eq
                    br_if 1 (;@7;)
                    br 4 (;@4;)
                  end
                  local.get 6
                  i32.const 255
                  i32.and
                  i32.const 1049528
                  i32.add
                  i32.load8_u
                  i32.const 2
                  i32.and
                  i32.eqz
                  br_if 3 (;@4;)
                end
                local.get 2
                i32.const 6
                i32.add
                local.set 2
              end
              local.get 5
              i32.const 25
              i32.eq
              br_if 2 (;@3;)
              br 4 (;@1;)
            end
            block  ;; label = @5
              local.get 6
              i32.const -97
              i32.add
              i32.const 26
              i32.lt_u
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 6
                i32.const -48
                i32.add
                i32.const 10
                i32.lt_u
                br_if 0 (;@6;)
                i32.const 1376728
                local.set 7
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 6
                          i32.const -33
                          i32.add
                          br_table 0 (;@11;) 7 (;@4;) 1 (;@10;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 7 (;@4;) 2 (;@9;) 7 (;@4;) 4 (;@7;) 7 (;@4;) 3 (;@8;) 7 (;@4;)
                        end
                        i32.const 553976109
                        local.set 7
                        br 6 (;@4;)
                      end
                      i32.const 588120500
                      local.set 7
                      br 5 (;@4;)
                    end
                    i32.const 705561026
                    local.set 7
                    br 4 (;@4;)
                  end
                  i32.const 772014544
                  local.set 7
                  br 3 (;@4;)
                end
                i32.const 738460116
                local.set 7
                br 2 (;@4;)
              end
              local.get 6
              i32.const 15
              i32.and
              i32.const 2
              i32.shl
              i32.const 1048992
              i32.add
              i32.load align=2
              local.set 7
              br 1 (;@4;)
            end
            local.get 6
            i32.const 159
            i32.add
            i32.const 255
            i32.and
            i32.const 2
            i32.shl
            i32.const 1048884
            i32.add
            i32.load align=2
            local.set 7
          end
          local.get 12
          local.get 2
          i32.const 65535
          i32.and
          i32.add
          local.get 0
          local.get 7
          i32.const 16
          i32.shr_u
          i32.const 255
          i32.and
          local.tee 6
          i32.const 19
          i32.const 3
          local.get 7
          i32.const 65535
          i32.and
          i32.const -1
          i32.const 673456383
          call $_ZN5metra3sys4draw17h0a173a2f57d6c02cE
          local.get 6
          local.get 2
          i32.add
          local.set 2
          local.get 5
          i32.const 25
          i32.ne
          br_if 1 (;@2;)
        end
      end
    end
    f64.const 0x1p+0 (;=1;)
    local.set 9
    block  ;; label = @1
      local.get 3
      local.get 10
      f64.sub
      f64.const 0x1.f4p+10 (;=2000;)
      f64.div
      local.tee 3
      f64.const 0x1p+0 (;=1;)
      f64.ge
      br_if 0 (;@1;)
      f64.const 0x1p+0 (;=1;)
      local.get 3
      f64.const -0x1.4p+3 (;=-10;)
      f64.mul
      call $_ZN4libm4math3pow3pow17he7a130a7fa29e219E
      f64.sub
      local.set 9
    end
    i32.const 8
    local.get 4
    i32.const -21
    i32.mul
    i32.const 170
    i32.add
    local.get 9
    local.get 11
    f64.mul
    i32.trunc_sat_f64_s
    i32.const 2
    i32.const 5
    i32.const 0
    i32.const 0
    i32.const 673456383
    call $_ZN5metra3sys4draw17h0a173a2f57d6c02cE
    i32.const 1)
  (func $_ZN4libm4math3pow3pow17he7a130a7fa29e219E (type 7) (param f64) (result f64)
    (local i64 i32 i32 i32 f64 f64 f64)
    block  ;; label = @1
      local.get 0
      i64.reinterpret_f64
      local.tee 1
      i64.const 32
      i64.shr_u
      i32.wrap_i64
      local.tee 2
      i32.const 2147483647
      i32.and
      local.tee 3
      local.get 1
      i32.wrap_i64
      local.tee 4
      i32.or
      br_if 0 (;@1;)
      f64.const 0x1p+0 (;=1;)
      return
    end
    block  ;; label = @1
      local.get 3
      i32.const 2146435073
      i32.ge_u
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 3
        i32.const 2146435072
        i32.ne
        br_if 0 (;@2;)
        local.get 4
        br_if 1 (;@1;)
        local.get 0
        f64.const 0x0p+0 (;=0;)
        local.get 1
        i64.const -1
        i64.gt_s
        select
        return
      end
      block  ;; label = @2
        local.get 4
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 3
          i32.const 1072693248
          i32.ne
          br_if 0 (;@3;)
          f64.const 0x1p+1 (;=2;)
          f64.const 0x1p-1 (;=0.5;)
          local.get 1
          i64.const -1
          i64.gt_s
          select
          return
        end
        block  ;; label = @3
          local.get 2
          i32.const 1073741824
          i32.ne
          br_if 0 (;@3;)
          f64.const 0x1p+2 (;=4;)
          return
        end
        local.get 2
        i32.const 1071644672
        i32.ne
        br_if 0 (;@2;)
        f64.const 0x1.6a09e667f3bcdp+0 (;=1.41421;)
        return
      end
      block  ;; label = @2
        local.get 3
        i32.const 1105199105
        i32.lt_u
        br_if 0 (;@2;)
        f64.const inf (;=inf;)
        f64.const 0x0p+0 (;=0;)
        local.get 2
        i32.const 0
        i32.gt_s
        select
        return
      end
      local.get 0
      f64.const 0x0p+0 (;=0;)
      f64.mul
      local.get 0
      local.get 1
      i64.const -4294967296
      i64.and
      f64.reinterpret_i64
      local.tee 5
      f64.sub
      f64.add
      local.tee 0
      local.get 5
      f64.add
      local.tee 6
      i64.reinterpret_f64
      local.tee 1
      i32.wrap_i64
      local.set 4
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i64.const 32
            i64.shr_u
            i32.wrap_i64
            local.tee 3
            i32.const 1083179007
            i32.gt_s
            br_if 0 (;@4;)
            local.get 3
            i32.const 2147482624
            i32.and
            i32.const 1083231231
            i32.le_u
            br_if 1 (;@3;)
            f64.const 0x0p+0 (;=0;)
            local.set 7
            local.get 3
            i32.const 1064252416
            i32.add
            local.get 4
            i32.or
            br_if 2 (;@2;)
            local.get 0
            local.get 6
            local.get 5
            f64.sub
            f64.le
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          f64.const inf (;=inf;)
          local.set 7
          local.get 3
          i32.const -1083179008
          i32.add
          local.get 4
          i32.or
          br_if 1 (;@2;)
          local.get 0
          f64.const 0x1.71547652b82fep-54 (;=8.00857e-17;)
          f64.add
          local.get 6
          local.get 5
          f64.sub
          f64.gt
          br_if 1 (;@2;)
        end
        i32.const 0
        local.set 4
        block  ;; label = @3
          local.get 3
          i32.const 2147483647
          i32.and
          i32.const 1071644672
          i32.le_u
          br_if 0 (;@3;)
          i32.const 0
          i32.const 1048576
          local.get 3
          i32.const 20
          i32.shr_u
          i32.const 2
          i32.add
          i32.shr_u
          local.get 3
          i32.add
          local.tee 3
          i32.const 1048575
          i32.and
          i32.const 1048576
          i32.or
          i32.const 19
          local.get 3
          i32.const 20
          i32.shr_u
          local.tee 2
          i32.sub
          i32.shr_u
          local.tee 4
          i32.sub
          local.get 4
          local.get 1
          i64.const 0
          i64.lt_s
          select
          local.set 4
          local.get 0
          local.get 5
          i32.const -1048576
          local.get 2
          i32.const 1
          i32.add
          i32.shr_s
          local.get 3
          i32.and
          i64.extend_i32_u
          i64.const 32
          i64.shl
          f64.reinterpret_i64
          f64.sub
          local.tee 5
          f64.add
          i64.reinterpret_f64
          local.set 1
        end
        block  ;; label = @3
          local.get 4
          i32.const 20
          i32.shl
          local.get 1
          i64.const -4294967296
          i64.and
          f64.reinterpret_i64
          local.tee 7
          f64.const 0x1.62e43p-1 (;=0.693147;)
          f64.mul
          local.tee 6
          local.get 0
          local.get 7
          local.get 5
          f64.sub
          f64.sub
          f64.const 0x1.62e42fefa39efp-1 (;=0.693147;)
          f64.mul
          local.get 7
          f64.const -0x1.05c610ca86c39p-29 (;=-1.90465e-09;)
          f64.mul
          f64.add
          local.tee 7
          f64.add
          local.tee 0
          local.get 0
          local.get 0
          local.get 0
          local.get 0
          f64.mul
          local.tee 5
          local.get 5
          local.get 5
          local.get 5
          local.get 5
          f64.const 0x1.6376972bea4dp-25 (;=4.13814e-08;)
          f64.mul
          f64.const -0x1.bbd41c5d26bf1p-20 (;=-1.65339e-06;)
          f64.add
          f64.mul
          f64.const 0x1.1566aaf25de2cp-14 (;=6.61376e-05;)
          f64.add
          f64.mul
          f64.const -0x1.6c16c16bebd93p-9 (;=-0.00277778;)
          f64.add
          f64.mul
          f64.const 0x1.555555555553ep-3 (;=0.166667;)
          f64.add
          f64.mul
          f64.sub
          local.tee 5
          f64.mul
          local.get 5
          f64.const -0x1p+1 (;=-2;)
          f64.add
          f64.div
          local.get 7
          local.get 0
          local.get 6
          f64.sub
          f64.sub
          local.tee 5
          local.get 0
          local.get 5
          f64.mul
          f64.add
          f64.sub
          f64.sub
          f64.const 0x1p+0 (;=1;)
          f64.add
          local.tee 0
          i64.reinterpret_f64
          local.tee 1
          i64.const 32
          i64.shr_u
          i32.wrap_i64
          i32.add
          local.tee 3
          i32.const 1048576
          i32.lt_s
          br_if 0 (;@3;)
          local.get 3
          i64.extend_i32_u
          i64.const 32
          i64.shl
          local.get 1
          i64.const 4294967295
          i64.and
          i64.or
          f64.reinterpret_i64
          return
        end
        local.get 0
        local.get 4
        call $_ZN4libm4math6scalbn6scalbn17h125b41e1276c1e66E
        local.set 7
      end
      local.get 7
      return
    end
    local.get 0
    f64.const 0x1p+1 (;=2;)
    f64.add)
  (func $engineMain (type 8)
    (local i32 i32 f64 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load8_u offset=1051584
            br_if 0 (;@4;)
            i32.const 0
            i32.const 1
            i32.store8 offset=1051584
            i32.const 0
            i32.const 5
            i32.store offset=1051576
            i32.const 0
            i32.const 0
            i32.load offset=1051116
            local.tee 1
            i32.const 1
            local.get 1
            select
            i32.store offset=1051116
            block  ;; label = @5
              local.get 1
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 1
                i32.const 1
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=1051116
                i32.const 1
                i32.eq
                local.set 1
                loop  ;; label = @7
                  local.get 1
                  br_if 0 (;@7;)
                end
              end
              i32.const 1050940
              i32.const 43
              local.get 0
              i32.const 12
              i32.add
              i32.const 1050924
              i32.const 1051004
              call $_ZN4core6result13unwrap_failed17h4e312bd8e5eb4431E
              unreachable
            end
            i32.const 0
            i32.const 1050900
            i32.store offset=1051104
            i32.const 0
            i32.const 1050868
            i32.store offset=1051100
            i32.const 0
            i32.const 2
            i32.store offset=1051116
            block  ;; label = @5
              i32.const 0
              i32.load offset=1051576
              i32.const 2
              i32.le_u
              br_if 0 (;@5;)
              local.get 0
              i64.const 0
              i64.store offset=68 align=4
              local.get 0
              i64.const 17179869185
              i64.store offset=60 align=4
              local.get 0
              i32.const 1049112
              i32.store offset=56
              local.get 0
              i32.const 3
              i32.store offset=52
              local.get 0
              i32.const 3
              i32.store offset=44
              local.get 0
              i32.const 0
              i32.store offset=32
              local.get 0
              i32.const 0
              i32.store offset=20
              local.get 0
              i64.const 223338299393
              i64.store offset=12 align=4
              local.get 0
              i32.const 1049080
              i64.extend_i32_u
              i64.const 47244640256
              i64.or
              i64.store offset=36 align=4
              local.get 0
              i32.const 1049091
              i32.store offset=48
              local.get 0
              i32.const 1049091
              i64.extend_i32_u
              i64.const 12884901888
              i64.or
              i64.store offset=24 align=4
              i32.const 0
              i32.load offset=1051100
              i32.const 1050108
              i32.const 0
              i32.load offset=1051116
              i32.const 2
              i32.eq
              local.tee 1
              select
              local.get 0
              i32.const 12
              i32.add
              i32.const 0
              i32.load offset=1051104
              i32.const 1050084
              local.get 1
              select
              i32.load offset=16
              call_indirect (type 1)
            end
            call $_ZN5metra3sys8get_time17h1f4f4ffe8a67506cE
            local.set 2
            i32.const 0
            i32.load8_u offset=1051120
            drop
            i32.const 24
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17hf076c5f6615165afE
            local.tee 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 1
            i32.const 1
            i32.store offset=16
            local.get 1
            i32.const 256
            i32.store16 offset=8
            local.get 1
            local.get 2
            f64.store
            block  ;; label = @5
              i32.const 0
              i32.load offset=1051588
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              block  ;; label = @6
                local.get 3
                i32.load8_u offset=9
                i32.const 3
                i32.eq
                br_if 0 (;@6;)
                i32.const 0
                i32.load offset=1051576
                i32.const 4
                i32.lt_u
                br_if 0 (;@6;)
                local.get 0
                i64.const 0
                i64.store offset=68 align=4
                local.get 0
                i64.const 17179869185
                i64.store offset=60 align=4
                local.get 0
                i32.const 1049072
                i32.store offset=56
                local.get 0
                i32.const 3
                i32.store offset=52
                local.get 0
                i32.const 4
                i32.store offset=44
                local.get 0
                i32.const 0
                i32.store offset=32
                local.get 0
                i32.const 0
                i32.store offset=20
                local.get 0
                i64.const 201863462913
                i64.store offset=12 align=4
                local.get 0
                i32.const 1049080
                i64.extend_i32_u
                i64.const 47244640256
                i64.or
                i64.store offset=36 align=4
                local.get 0
                i32.const 1049091
                i32.store offset=48
                local.get 0
                i32.const 1049091
                i64.extend_i32_u
                i64.const 12884901888
                i64.or
                i64.store offset=24 align=4
                i32.const 0
                i32.load offset=1051100
                i32.const 1050108
                i32.const 0
                i32.load offset=1051116
                i32.const 2
                i32.eq
                local.tee 3
                select
                local.get 0
                i32.const 12
                i32.add
                i32.const 0
                i32.load offset=1051104
                i32.const 1050084
                local.get 3
                select
                i32.load offset=16
                call_indirect (type 1)
                i32.const 0
                i32.load offset=1051588
                local.set 3
              end
              local.get 3
              i32.const -4
              i32.add
              i32.load
              local.tee 4
              i32.const -8
              i32.and
              i32.const 28
              i32.const 32
              local.get 4
              i32.const 3
              i32.and
              local.tee 5
              select
              i32.lt_u
              br_if 3 (;@2;)
              block  ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 4
                i32.const 64
                i32.ge_u
                br_if 5 (;@1;)
              end
              local.get 3
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h8ebfbf97344dd34dE
            end
            i32.const 0
            local.get 1
            i32.store offset=1051588
            local.get 0
            i32.const 80
            i32.add
            global.set $__stack_pointer
            return
          end
          local.get 0
          i32.const 0
          i32.store offset=28
          local.get 0
          i32.const 1
          i32.store offset=16
          local.get 0
          i32.const 1048624
          i32.store offset=12
          local.get 0
          i64.const 4
          i64.store offset=20 align=4
          local.get 0
          i32.const 12
          i32.add
          i32.const 1048680
          call $_ZN4core9panicking9panic_fmt17h41cfed79b2ddbf13E
          unreachable
        end
        i32.const 24
        call $_ZN5alloc5alloc18handle_alloc_error17h538ce9133f14f3ccE
        unreachable
      end
      i32.const 1050740
      i32.const 46
      i32.const 1050788
      call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
      unreachable
    end
    i32.const 1050804
    i32.const 46
    i32.const 1050852
    call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
    unreachable)
  (func $_ZN4core6result13unwrap_failed17h4e312bd8e5eb4431E (type 9) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    local.get 5
    local.get 1
    i32.store offset=12
    local.get 5
    local.get 0
    i32.store offset=8
    local.get 5
    local.get 3
    i32.store offset=20
    local.get 5
    local.get 2
    i32.store offset=16
    local.get 5
    i32.const 2
    i32.store offset=28
    local.get 5
    i32.const 1049832
    i32.store offset=24
    local.get 5
    i64.const 2
    i64.store offset=36 align=4
    local.get 5
    i32.const 2
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i32.const 16
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=56
    local.get 5
    i32.const 3
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 5
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=48
    local.get 5
    local.get 5
    i32.const 48
    i32.add
    i32.store offset=32
    local.get 5
    i32.const 24
    i32.add
    local.get 4
    call $_ZN4core9panicking9panic_fmt17h41cfed79b2ddbf13E
    unreachable)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17hf076c5f6615165afE (type 6) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.const 245
                  i32.lt_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 0
                    i32.const -65588
                    i32.le_u
                    br_if 0 (;@8;)
                    i32.const 0
                    return
                  end
                  local.get 0
                  i32.const 11
                  i32.add
                  local.tee 1
                  i32.const -8
                  i32.and
                  local.set 2
                  i32.const 0
                  i32.load offset=1051536
                  local.tee 3
                  i32.eqz
                  br_if 4 (;@3;)
                  i32.const 31
                  local.set 4
                  block  ;; label = @8
                    local.get 0
                    i32.const 16777204
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 2
                    i32.const 6
                    local.get 1
                    i32.const 8
                    i32.shr_u
                    i32.clz
                    local.tee 0
                    i32.sub
                    i32.shr_u
                    i32.const 1
                    i32.and
                    local.get 0
                    i32.const 1
                    i32.shl
                    i32.sub
                    i32.const 62
                    i32.add
                    local.set 4
                  end
                  i32.const 0
                  local.get 2
                  i32.sub
                  local.set 1
                  block  ;; label = @8
                    local.get 4
                    i32.const 2
                    i32.shl
                    i32.const 1051124
                    i32.add
                    i32.load
                    local.tee 5
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 0
                    i32.const 0
                    local.set 6
                    br 2 (;@6;)
                  end
                  i32.const 0
                  local.set 0
                  local.get 2
                  i32.const 0
                  i32.const 25
                  local.get 4
                  i32.const 1
                  i32.shr_u
                  i32.sub
                  local.get 4
                  i32.const 31
                  i32.eq
                  select
                  i32.shl
                  local.set 7
                  i32.const 0
                  local.set 6
                  loop  ;; label = @8
                    block  ;; label = @9
                      local.get 5
                      local.tee 5
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      local.tee 8
                      local.get 2
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 8
                      local.get 2
                      i32.sub
                      local.tee 8
                      local.get 1
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 8
                      local.set 1
                      local.get 5
                      local.set 6
                      local.get 8
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 1
                      local.get 5
                      local.set 6
                      local.get 5
                      local.set 0
                      br 4 (;@5;)
                    end
                    local.get 5
                    i32.load offset=20
                    local.tee 8
                    local.get 0
                    local.get 8
                    local.get 5
                    local.get 7
                    i32.const 29
                    i32.shr_u
                    i32.const 4
                    i32.and
                    i32.add
                    i32.load offset=16
                    local.tee 5
                    i32.ne
                    select
                    local.get 0
                    local.get 8
                    select
                    local.set 0
                    local.get 7
                    i32.const 1
                    i32.shl
                    local.set 7
                    local.get 5
                    i32.eqz
                    br_if 2 (;@6;)
                    br 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1051532
                            local.tee 5
                            i32.const 16
                            local.get 0
                            i32.const 11
                            i32.add
                            i32.const 504
                            i32.and
                            local.get 0
                            i32.const 11
                            i32.lt_u
                            select
                            local.tee 2
                            i32.const 3
                            i32.shr_u
                            local.tee 1
                            i32.shr_u
                            local.tee 0
                            i32.const 3
                            i32.and
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 0
                            i32.const -1
                            i32.xor
                            i32.const 1
                            i32.and
                            local.get 1
                            i32.add
                            local.tee 7
                            i32.const 3
                            i32.shl
                            local.tee 2
                            i32.const 1051268
                            i32.add
                            local.tee 1
                            local.get 2
                            i32.const 1051276
                            i32.add
                            i32.load
                            local.tee 0
                            i32.load offset=8
                            local.tee 6
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 6
                            local.get 1
                            i32.store offset=12
                            local.get 1
                            local.get 6
                            i32.store offset=8
                            br 2 (;@10;)
                          end
                          local.get 2
                          i32.const 0
                          i32.load offset=1051540
                          i32.le_u
                          br_if 8 (;@3;)
                          local.get 0
                          br_if 2 (;@9;)
                          i32.const 0
                          i32.load offset=1051536
                          local.tee 0
                          i32.eqz
                          br_if 8 (;@3;)
                          local.get 0
                          i32.ctz
                          i32.const 2
                          i32.shl
                          i32.const 1051124
                          i32.add
                          i32.load
                          local.tee 6
                          i32.load offset=4
                          i32.const -8
                          i32.and
                          local.get 2
                          i32.sub
                          local.set 1
                          local.get 6
                          local.set 5
                          loop  ;; label = @12
                            block  ;; label = @13
                              local.get 6
                              i32.load offset=16
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 6
                              i32.load offset=20
                              local.tee 0
                              br_if 0 (;@13;)
                              local.get 5
                              i32.load offset=24
                              local.set 4
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    local.get 5
                                    i32.load offset=12
                                    local.tee 0
                                    local.get 5
                                    i32.ne
                                    br_if 0 (;@16;)
                                    local.get 5
                                    i32.const 20
                                    i32.const 16
                                    local.get 5
                                    i32.load offset=20
                                    local.tee 0
                                    select
                                    i32.add
                                    i32.load
                                    local.tee 6
                                    br_if 1 (;@15;)
                                    i32.const 0
                                    local.set 0
                                    br 2 (;@14;)
                                  end
                                  local.get 5
                                  i32.load offset=8
                                  local.tee 6
                                  local.get 0
                                  i32.store offset=12
                                  local.get 0
                                  local.get 6
                                  i32.store offset=8
                                  br 1 (;@14;)
                                end
                                local.get 5
                                i32.const 20
                                i32.add
                                local.get 5
                                i32.const 16
                                i32.add
                                local.get 0
                                select
                                local.set 7
                                loop  ;; label = @15
                                  local.get 7
                                  local.set 8
                                  local.get 6
                                  local.tee 0
                                  i32.const 20
                                  i32.add
                                  local.get 0
                                  i32.const 16
                                  i32.add
                                  local.get 0
                                  i32.load offset=20
                                  local.tee 6
                                  select
                                  local.set 7
                                  local.get 0
                                  i32.const 20
                                  i32.const 16
                                  local.get 6
                                  select
                                  i32.add
                                  i32.load
                                  local.tee 6
                                  br_if 0 (;@15;)
                                end
                                local.get 8
                                i32.const 0
                                i32.store
                              end
                              local.get 4
                              i32.eqz
                              br_if 6 (;@7;)
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 5
                                  local.get 5
                                  i32.load offset=28
                                  i32.const 2
                                  i32.shl
                                  i32.const 1051124
                                  i32.add
                                  local.tee 6
                                  i32.load
                                  i32.eq
                                  br_if 0 (;@15;)
                                  block  ;; label = @16
                                    local.get 4
                                    i32.load offset=16
                                    local.get 5
                                    i32.eq
                                    br_if 0 (;@16;)
                                    local.get 4
                                    local.get 0
                                    i32.store offset=20
                                    local.get 0
                                    br_if 2 (;@14;)
                                    br 9 (;@7;)
                                  end
                                  local.get 4
                                  local.get 0
                                  i32.store offset=16
                                  local.get 0
                                  br_if 1 (;@14;)
                                  br 8 (;@7;)
                                end
                                local.get 6
                                local.get 0
                                i32.store
                                local.get 0
                                i32.eqz
                                br_if 6 (;@8;)
                              end
                              local.get 0
                              local.get 4
                              i32.store offset=24
                              block  ;; label = @14
                                local.get 5
                                i32.load offset=16
                                local.tee 6
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 0
                                local.get 6
                                i32.store offset=16
                                local.get 6
                                local.get 0
                                i32.store offset=24
                              end
                              local.get 5
                              i32.load offset=20
                              local.tee 6
                              i32.eqz
                              br_if 6 (;@7;)
                              local.get 0
                              local.get 6
                              i32.store offset=20
                              local.get 6
                              local.get 0
                              i32.store offset=24
                              br 6 (;@7;)
                            end
                            local.get 0
                            i32.load offset=4
                            i32.const -8
                            i32.and
                            local.get 2
                            i32.sub
                            local.tee 6
                            local.get 1
                            local.get 6
                            local.get 1
                            i32.lt_u
                            local.tee 6
                            select
                            local.set 1
                            local.get 0
                            local.get 5
                            local.get 6
                            select
                            local.set 5
                            local.get 0
                            local.set 6
                            br 0 (;@12;)
                          end
                        end
                        i32.const 0
                        local.get 5
                        i32.const -2
                        local.get 7
                        i32.rotl
                        i32.and
                        i32.store offset=1051532
                      end
                      local.get 0
                      local.get 2
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 2
                      i32.add
                      local.tee 2
                      local.get 2
                      i32.load offset=4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      br 7 (;@2;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 0
                        local.get 1
                        i32.shl
                        i32.const 2
                        local.get 1
                        i32.shl
                        local.tee 0
                        i32.const 0
                        local.get 0
                        i32.sub
                        i32.or
                        i32.and
                        i32.ctz
                        local.tee 8
                        i32.const 3
                        i32.shl
                        local.tee 1
                        i32.const 1051268
                        i32.add
                        local.tee 6
                        local.get 1
                        i32.const 1051276
                        i32.add
                        i32.load
                        local.tee 0
                        i32.load offset=8
                        local.tee 7
                        i32.eq
                        br_if 0 (;@10;)
                        local.get 7
                        local.get 6
                        i32.store offset=12
                        local.get 6
                        local.get 7
                        i32.store offset=8
                        br 1 (;@9;)
                      end
                      i32.const 0
                      local.get 5
                      i32.const -2
                      local.get 8
                      i32.rotl
                      i32.and
                      i32.store offset=1051532
                    end
                    local.get 0
                    local.get 2
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 2
                    i32.add
                    local.tee 5
                    local.get 1
                    local.get 2
                    i32.sub
                    local.tee 6
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 0
                    local.get 1
                    i32.add
                    local.get 6
                    i32.store
                    block  ;; label = @9
                      i32.const 0
                      i32.load offset=1051540
                      local.tee 1
                      i32.eqz
                      br_if 0 (;@9;)
                      i32.const 0
                      i32.load offset=1051548
                      local.set 2
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1051532
                          local.tee 7
                          i32.const 1
                          local.get 1
                          i32.const 3
                          i32.shr_u
                          i32.shl
                          local.tee 8
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 7
                          local.get 8
                          i32.or
                          i32.store offset=1051532
                          local.get 1
                          i32.const -8
                          i32.and
                          i32.const 1051268
                          i32.add
                          local.tee 1
                          local.set 7
                          br 1 (;@10;)
                        end
                        local.get 1
                        i32.const -8
                        i32.and
                        local.tee 7
                        i32.const 1051268
                        i32.add
                        local.set 1
                        local.get 7
                        i32.const 1051276
                        i32.add
                        i32.load
                        local.set 7
                      end
                      local.get 1
                      local.get 2
                      i32.store offset=8
                      local.get 7
                      local.get 2
                      i32.store offset=12
                      local.get 2
                      local.get 1
                      i32.store offset=12
                      local.get 2
                      local.get 7
                      i32.store offset=8
                    end
                    i32.const 0
                    local.get 5
                    i32.store offset=1051548
                    i32.const 0
                    local.get 6
                    i32.store offset=1051540
                    br 6 (;@2;)
                  end
                  i32.const 0
                  i32.const 0
                  i32.load offset=1051536
                  i32.const -2
                  local.get 5
                  i32.load offset=28
                  i32.rotl
                  i32.and
                  i32.store offset=1051536
                end
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 1
                      i32.const 16
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 2
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 5
                      local.get 2
                      i32.add
                      local.tee 6
                      local.get 1
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 6
                      local.get 1
                      i32.add
                      local.get 1
                      i32.store
                      i32.const 0
                      i32.load offset=1051540
                      local.tee 7
                      i32.eqz
                      br_if 1 (;@8;)
                      i32.const 0
                      i32.load offset=1051548
                      local.set 0
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1051532
                          local.tee 8
                          i32.const 1
                          local.get 7
                          i32.const 3
                          i32.shr_u
                          i32.shl
                          local.tee 4
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 8
                          local.get 4
                          i32.or
                          i32.store offset=1051532
                          local.get 7
                          i32.const -8
                          i32.and
                          i32.const 1051268
                          i32.add
                          local.tee 7
                          local.set 8
                          br 1 (;@10;)
                        end
                        local.get 7
                        i32.const -8
                        i32.and
                        local.tee 8
                        i32.const 1051268
                        i32.add
                        local.set 7
                        local.get 8
                        i32.const 1051276
                        i32.add
                        i32.load
                        local.set 8
                      end
                      local.get 7
                      local.get 0
                      i32.store offset=8
                      local.get 8
                      local.get 0
                      i32.store offset=12
                      local.get 0
                      local.get 7
                      i32.store offset=12
                      local.get 0
                      local.get 8
                      i32.store offset=8
                      br 1 (;@8;)
                    end
                    local.get 5
                    local.get 1
                    local.get 2
                    i32.add
                    local.tee 0
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 5
                    local.get 0
                    i32.add
                    local.tee 0
                    local.get 0
                    i32.load offset=4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.get 6
                  i32.store offset=1051548
                  i32.const 0
                  local.get 1
                  i32.store offset=1051540
                end
                local.get 5
                i32.const 8
                i32.add
                local.tee 1
                i32.eqz
                br_if 3 (;@3;)
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 0
                local.get 6
                i32.or
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                i32.const 2
                local.get 4
                i32.shl
                local.tee 0
                i32.const 0
                local.get 0
                i32.sub
                i32.or
                local.get 3
                i32.and
                local.tee 0
                i32.eqz
                br_if 3 (;@3;)
                local.get 0
                i32.ctz
                i32.const 2
                i32.shl
                i32.const 1051124
                i32.add
                i32.load
                local.set 0
              end
              local.get 0
              i32.eqz
              br_if 1 (;@4;)
            end
            loop  ;; label = @5
              local.get 0
              local.get 6
              local.get 0
              i32.load offset=4
              i32.const -8
              i32.and
              local.tee 5
              local.get 2
              i32.sub
              local.tee 8
              local.get 1
              i32.lt_u
              local.tee 4
              select
              local.set 3
              local.get 5
              local.get 2
              i32.lt_u
              local.set 7
              local.get 8
              local.get 1
              local.get 4
              select
              local.set 8
              block  ;; label = @6
                local.get 0
                i32.load offset=16
                local.tee 5
                br_if 0 (;@6;)
                local.get 0
                i32.load offset=20
                local.set 5
              end
              local.get 6
              local.get 3
              local.get 7
              select
              local.set 6
              local.get 1
              local.get 8
              local.get 7
              select
              local.set 1
              local.get 5
              local.set 0
              local.get 5
              br_if 0 (;@5;)
            end
          end
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=1051540
            local.tee 0
            local.get 2
            i32.lt_u
            br_if 0 (;@4;)
            local.get 1
            local.get 0
            local.get 2
            i32.sub
            i32.ge_u
            br_if 1 (;@3;)
          end
          local.get 6
          i32.load offset=24
          local.set 4
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 6
                i32.load offset=12
                local.tee 0
                local.get 6
                i32.ne
                br_if 0 (;@6;)
                local.get 6
                i32.const 20
                i32.const 16
                local.get 6
                i32.load offset=20
                local.tee 0
                select
                i32.add
                i32.load
                local.tee 5
                br_if 1 (;@5;)
                i32.const 0
                local.set 0
                br 2 (;@4;)
              end
              local.get 6
              i32.load offset=8
              local.tee 5
              local.get 0
              i32.store offset=12
              local.get 0
              local.get 5
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 6
            i32.const 20
            i32.add
            local.get 6
            i32.const 16
            i32.add
            local.get 0
            select
            local.set 7
            loop  ;; label = @5
              local.get 7
              local.set 8
              local.get 5
              local.tee 0
              i32.const 20
              i32.add
              local.get 0
              i32.const 16
              i32.add
              local.get 0
              i32.load offset=20
              local.tee 5
              select
              local.set 7
              local.get 0
              i32.const 20
              i32.const 16
              local.get 5
              select
              i32.add
              i32.load
              local.tee 5
              br_if 0 (;@5;)
            end
            local.get 8
            i32.const 0
            i32.store
          end
          block  ;; label = @4
            local.get 4
            i32.eqz
            br_if 0 (;@4;)
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 6
                  local.get 6
                  i32.load offset=28
                  i32.const 2
                  i32.shl
                  i32.const 1051124
                  i32.add
                  local.tee 5
                  i32.load
                  i32.eq
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    local.get 4
                    i32.load offset=16
                    local.get 6
                    i32.eq
                    br_if 0 (;@8;)
                    local.get 4
                    local.get 0
                    i32.store offset=20
                    local.get 0
                    br_if 2 (;@6;)
                    br 4 (;@4;)
                  end
                  local.get 4
                  local.get 0
                  i32.store offset=16
                  local.get 0
                  br_if 1 (;@6;)
                  br 3 (;@4;)
                end
                local.get 5
                local.get 0
                i32.store
                local.get 0
                i32.eqz
                br_if 1 (;@5;)
              end
              local.get 0
              local.get 4
              i32.store offset=24
              block  ;; label = @6
                local.get 6
                i32.load offset=16
                local.tee 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                local.get 5
                i32.store offset=16
                local.get 5
                local.get 0
                i32.store offset=24
              end
              local.get 6
              i32.load offset=20
              local.tee 5
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              local.get 5
              i32.store offset=20
              local.get 5
              local.get 0
              i32.store offset=24
              br 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1051536
            i32.const -2
            local.get 6
            i32.load offset=28
            i32.rotl
            i32.and
            i32.store offset=1051536
          end
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 16
              i32.lt_u
              br_if 0 (;@5;)
              local.get 6
              local.get 2
              i32.const 3
              i32.or
              i32.store offset=4
              local.get 6
              local.get 2
              i32.add
              local.tee 0
              local.get 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              block  ;; label = @6
                local.get 1
                i32.const 256
                i32.lt_u
                br_if 0 (;@6;)
                local.get 0
                local.get 1
                call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h37918539f353b168E
                br 2 (;@4;)
              end
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1051532
                  local.tee 5
                  i32.const 1
                  local.get 1
                  i32.const 3
                  i32.shr_u
                  i32.shl
                  local.tee 7
                  i32.and
                  br_if 0 (;@7;)
                  i32.const 0
                  local.get 5
                  local.get 7
                  i32.or
                  i32.store offset=1051532
                  local.get 1
                  i32.const 248
                  i32.and
                  i32.const 1051268
                  i32.add
                  local.tee 1
                  local.set 5
                  br 1 (;@6;)
                end
                local.get 1
                i32.const 248
                i32.and
                local.tee 5
                i32.const 1051268
                i32.add
                local.set 1
                local.get 5
                i32.const 1051276
                i32.add
                i32.load
                local.set 5
              end
              local.get 1
              local.get 0
              i32.store offset=8
              local.get 5
              local.get 0
              i32.store offset=12
              local.get 0
              local.get 1
              i32.store offset=12
              local.get 0
              local.get 5
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 6
            local.get 1
            local.get 2
            i32.add
            local.tee 0
            i32.const 3
            i32.or
            i32.store offset=4
            local.get 6
            local.get 0
            i32.add
            local.tee 0
            local.get 0
            i32.load offset=4
            i32.const 1
            i32.or
            i32.store offset=4
          end
          local.get 6
          i32.const 8
          i32.add
          local.tee 1
          br_if 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  i32.load offset=1051540
                  local.tee 1
                  local.get 2
                  i32.ge_u
                  br_if 0 (;@7;)
                  block  ;; label = @8
                    i32.const 0
                    i32.load offset=1051544
                    local.tee 0
                    local.get 2
                    i32.gt_u
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 2
                      i32.const 65583
                      i32.add
                      local.tee 6
                      i32.const 16
                      i32.shr_u
                      memory.grow
                      local.tee 0
                      i32.const -1
                      i32.ne
                      br_if 0 (;@9;)
                      i32.const 0
                      return
                    end
                    i32.const 0
                    local.set 1
                    local.get 0
                    i32.const 16
                    i32.shl
                    local.tee 0
                    i32.eqz
                    br_if 7 (;@1;)
                    i32.const 0
                    i32.const 0
                    i32.load offset=1051556
                    local.get 6
                    i32.const -65536
                    i32.and
                    local.tee 1
                    i32.const -16
                    i32.add
                    local.get 1
                    local.get 0
                    i32.const 0
                    local.get 1
                    i32.sub
                    i32.eq
                    select
                    local.tee 8
                    i32.add
                    local.tee 1
                    i32.store offset=1051556
                    i32.const 0
                    local.get 1
                    i32.const 0
                    i32.load offset=1051560
                    local.tee 6
                    local.get 1
                    local.get 6
                    i32.gt_u
                    select
                    i32.store offset=1051560
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1051552
                          local.tee 6
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 1051252
                          local.set 1
                          loop  ;; label = @12
                            local.get 1
                            i32.load
                            local.tee 5
                            local.get 1
                            i32.const 4
                            i32.add
                            i32.load
                            local.tee 7
                            i32.add
                            local.get 0
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 1
                            i32.load offset=8
                            local.tee 1
                            br_if 0 (;@12;)
                            br 3 (;@9;)
                          end
                        end
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1051568
                            local.tee 1
                            i32.eqz
                            br_if 0 (;@12;)
                            local.get 1
                            local.get 0
                            i32.le_u
                            br_if 1 (;@11;)
                          end
                          i32.const 0
                          local.get 0
                          i32.store offset=1051568
                        end
                        i32.const 0
                        i32.const 4095
                        i32.store offset=1051572
                        i32.const 0
                        local.get 8
                        i32.store offset=1051256
                        i32.const 0
                        local.get 0
                        i32.store offset=1051252
                        i32.const 0
                        i32.const 1051268
                        i32.store offset=1051280
                        i32.const 0
                        i32.const 1051276
                        i32.store offset=1051288
                        i32.const 0
                        i32.const 1051268
                        i32.store offset=1051276
                        i32.const 0
                        i32.const 1051284
                        i32.store offset=1051296
                        i32.const 0
                        i32.const 1051276
                        i32.store offset=1051284
                        i32.const 0
                        i32.const 1051292
                        i32.store offset=1051304
                        i32.const 0
                        i32.const 1051284
                        i32.store offset=1051292
                        i32.const 0
                        i32.const 1051300
                        i32.store offset=1051312
                        i32.const 0
                        i32.const 1051292
                        i32.store offset=1051300
                        i32.const 0
                        i32.const 1051308
                        i32.store offset=1051320
                        i32.const 0
                        i32.const 1051300
                        i32.store offset=1051308
                        i32.const 0
                        i32.const 1051316
                        i32.store offset=1051328
                        i32.const 0
                        i32.const 1051308
                        i32.store offset=1051316
                        i32.const 0
                        i32.const 1051324
                        i32.store offset=1051336
                        i32.const 0
                        i32.const 1051316
                        i32.store offset=1051324
                        i32.const 0
                        i32.const 0
                        i32.store offset=1051264
                        i32.const 0
                        i32.const 1051332
                        i32.store offset=1051344
                        i32.const 0
                        i32.const 1051324
                        i32.store offset=1051332
                        i32.const 0
                        i32.const 1051332
                        i32.store offset=1051340
                        i32.const 0
                        i32.const 1051340
                        i32.store offset=1051352
                        i32.const 0
                        i32.const 1051340
                        i32.store offset=1051348
                        i32.const 0
                        i32.const 1051348
                        i32.store offset=1051360
                        i32.const 0
                        i32.const 1051348
                        i32.store offset=1051356
                        i32.const 0
                        i32.const 1051356
                        i32.store offset=1051368
                        i32.const 0
                        i32.const 1051356
                        i32.store offset=1051364
                        i32.const 0
                        i32.const 1051364
                        i32.store offset=1051376
                        i32.const 0
                        i32.const 1051364
                        i32.store offset=1051372
                        i32.const 0
                        i32.const 1051372
                        i32.store offset=1051384
                        i32.const 0
                        i32.const 1051372
                        i32.store offset=1051380
                        i32.const 0
                        i32.const 1051380
                        i32.store offset=1051392
                        i32.const 0
                        i32.const 1051380
                        i32.store offset=1051388
                        i32.const 0
                        i32.const 1051388
                        i32.store offset=1051400
                        i32.const 0
                        i32.const 1051388
                        i32.store offset=1051396
                        i32.const 0
                        i32.const 1051396
                        i32.store offset=1051408
                        i32.const 0
                        i32.const 1051404
                        i32.store offset=1051416
                        i32.const 0
                        i32.const 1051396
                        i32.store offset=1051404
                        i32.const 0
                        i32.const 1051412
                        i32.store offset=1051424
                        i32.const 0
                        i32.const 1051404
                        i32.store offset=1051412
                        i32.const 0
                        i32.const 1051420
                        i32.store offset=1051432
                        i32.const 0
                        i32.const 1051412
                        i32.store offset=1051420
                        i32.const 0
                        i32.const 1051428
                        i32.store offset=1051440
                        i32.const 0
                        i32.const 1051420
                        i32.store offset=1051428
                        i32.const 0
                        i32.const 1051436
                        i32.store offset=1051448
                        i32.const 0
                        i32.const 1051428
                        i32.store offset=1051436
                        i32.const 0
                        i32.const 1051444
                        i32.store offset=1051456
                        i32.const 0
                        i32.const 1051436
                        i32.store offset=1051444
                        i32.const 0
                        i32.const 1051452
                        i32.store offset=1051464
                        i32.const 0
                        i32.const 1051444
                        i32.store offset=1051452
                        i32.const 0
                        i32.const 1051460
                        i32.store offset=1051472
                        i32.const 0
                        i32.const 1051452
                        i32.store offset=1051460
                        i32.const 0
                        i32.const 1051468
                        i32.store offset=1051480
                        i32.const 0
                        i32.const 1051460
                        i32.store offset=1051468
                        i32.const 0
                        i32.const 1051476
                        i32.store offset=1051488
                        i32.const 0
                        i32.const 1051468
                        i32.store offset=1051476
                        i32.const 0
                        i32.const 1051484
                        i32.store offset=1051496
                        i32.const 0
                        i32.const 1051476
                        i32.store offset=1051484
                        i32.const 0
                        i32.const 1051492
                        i32.store offset=1051504
                        i32.const 0
                        i32.const 1051484
                        i32.store offset=1051492
                        i32.const 0
                        i32.const 1051500
                        i32.store offset=1051512
                        i32.const 0
                        i32.const 1051492
                        i32.store offset=1051500
                        i32.const 0
                        i32.const 1051508
                        i32.store offset=1051520
                        i32.const 0
                        i32.const 1051500
                        i32.store offset=1051508
                        i32.const 0
                        i32.const 1051516
                        i32.store offset=1051528
                        i32.const 0
                        i32.const 1051508
                        i32.store offset=1051516
                        i32.const 0
                        local.get 0
                        i32.store offset=1051552
                        i32.const 0
                        i32.const 1051516
                        i32.store offset=1051524
                        i32.const 0
                        local.get 8
                        i32.const -40
                        i32.add
                        local.tee 1
                        i32.store offset=1051544
                        local.get 0
                        local.get 1
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        local.get 0
                        local.get 1
                        i32.add
                        i32.const 40
                        i32.store offset=4
                        i32.const 0
                        i32.const 2097152
                        i32.store offset=1051564
                        br 7 (;@3;)
                      end
                      local.get 1
                      i32.load offset=12
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 6
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 6
                      local.get 0
                      i32.lt_u
                      br_if 3 (;@6;)
                    end
                    i32.const 0
                    i32.const 0
                    i32.load offset=1051568
                    local.tee 1
                    local.get 0
                    local.get 1
                    local.get 0
                    i32.lt_u
                    select
                    i32.store offset=1051568
                    local.get 0
                    local.get 8
                    i32.add
                    local.set 5
                    i32.const 1051252
                    local.set 1
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          loop  ;; label = @12
                            local.get 1
                            i32.load
                            local.tee 7
                            local.get 5
                            i32.eq
                            br_if 1 (;@11;)
                            local.get 1
                            i32.load offset=8
                            local.tee 1
                            br_if 0 (;@12;)
                            br 2 (;@10;)
                          end
                        end
                        local.get 1
                        i32.load offset=12
                        i32.eqz
                        br_if 1 (;@9;)
                      end
                      i32.const 1051252
                      local.set 1
                      block  ;; label = @10
                        loop  ;; label = @11
                          block  ;; label = @12
                            local.get 1
                            i32.load
                            local.tee 5
                            local.get 6
                            i32.gt_u
                            br_if 0 (;@12;)
                            local.get 6
                            local.get 5
                            local.get 1
                            i32.const 4
                            i32.add
                            i32.load
                            i32.add
                            local.tee 5
                            i32.lt_u
                            br_if 2 (;@10;)
                          end
                          local.get 1
                          i32.load offset=8
                          local.set 1
                          br 0 (;@11;)
                        end
                      end
                      i32.const 0
                      local.get 0
                      i32.store offset=1051552
                      i32.const 0
                      local.get 8
                      i32.const -40
                      i32.add
                      local.tee 1
                      i32.store offset=1051544
                      local.get 0
                      local.get 1
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 0
                      local.get 1
                      i32.add
                      i32.const 40
                      i32.store offset=4
                      i32.const 0
                      i32.const 2097152
                      i32.store offset=1051564
                      local.get 6
                      local.get 5
                      i32.const -32
                      i32.add
                      i32.const -8
                      i32.and
                      i32.const -8
                      i32.add
                      local.tee 1
                      local.get 1
                      local.get 6
                      i32.const 16
                      i32.add
                      i32.lt_u
                      select
                      local.tee 1
                      i32.const 27
                      i32.store offset=4
                      i32.const 0
                      i64.load offset=1051252 align=4
                      local.set 9
                      local.get 1
                      i32.const 16
                      i32.add
                      i32.const 0
                      i64.load offset=1051260 align=4
                      i64.store align=4
                      local.get 1
                      i32.const 8
                      i32.add
                      local.tee 7
                      local.get 9
                      i64.store align=4
                      i32.const 0
                      local.get 8
                      i32.store offset=1051256
                      i32.const 0
                      local.get 0
                      i32.store offset=1051252
                      i32.const 0
                      local.get 7
                      i32.store offset=1051260
                      i32.const 0
                      i32.const 0
                      i32.store offset=1051264
                      local.get 1
                      i32.const 28
                      i32.add
                      local.set 0
                      loop  ;; label = @10
                        local.get 0
                        i32.const 7
                        i32.store
                        local.get 0
                        i32.const 4
                        i32.add
                        local.tee 0
                        local.get 5
                        i32.lt_u
                        br_if 0 (;@10;)
                      end
                      local.get 1
                      local.get 6
                      i32.eq
                      br_if 6 (;@3;)
                      local.get 1
                      local.get 1
                      i32.load offset=4
                      i32.const -2
                      i32.and
                      i32.store offset=4
                      local.get 6
                      local.get 1
                      local.get 6
                      i32.sub
                      local.tee 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 1
                      local.get 0
                      i32.store
                      block  ;; label = @10
                        local.get 0
                        i32.const 256
                        i32.lt_u
                        br_if 0 (;@10;)
                        local.get 6
                        local.get 0
                        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h37918539f353b168E
                        br 7 (;@3;)
                      end
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1051532
                          local.tee 1
                          i32.const 1
                          local.get 0
                          i32.const 3
                          i32.shr_u
                          i32.shl
                          local.tee 5
                          i32.and
                          br_if 0 (;@11;)
                          i32.const 0
                          local.get 1
                          local.get 5
                          i32.or
                          i32.store offset=1051532
                          local.get 0
                          i32.const 248
                          i32.and
                          i32.const 1051268
                          i32.add
                          local.tee 0
                          local.set 1
                          br 1 (;@10;)
                        end
                        local.get 0
                        i32.const 248
                        i32.and
                        local.tee 1
                        i32.const 1051268
                        i32.add
                        local.set 0
                        local.get 1
                        i32.const 1051276
                        i32.add
                        i32.load
                        local.set 1
                      end
                      local.get 0
                      local.get 6
                      i32.store offset=8
                      local.get 1
                      local.get 6
                      i32.store offset=12
                      local.get 6
                      local.get 0
                      i32.store offset=12
                      local.get 6
                      local.get 1
                      i32.store offset=8
                      br 6 (;@3;)
                    end
                    local.get 1
                    local.get 0
                    i32.store
                    local.get 1
                    local.get 1
                    i32.load offset=4
                    local.get 8
                    i32.add
                    i32.store offset=4
                    local.get 0
                    local.get 2
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 7
                    i32.const 15
                    i32.add
                    i32.const -8
                    i32.and
                    i32.const -8
                    i32.add
                    local.tee 6
                    local.get 0
                    local.get 2
                    i32.add
                    local.tee 2
                    i32.sub
                    local.set 1
                    local.get 6
                    i32.const 0
                    i32.load offset=1051552
                    i32.eq
                    br_if 3 (;@5;)
                    local.get 6
                    i32.const 0
                    i32.load offset=1051548
                    i32.eq
                    br_if 4 (;@4;)
                    block  ;; label = @9
                      local.get 6
                      i32.load offset=4
                      local.tee 5
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 6
                      local.get 5
                      i32.const -8
                      i32.and
                      local.tee 5
                      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$12unlink_chunk17hf2bd2fd6dcf32145E
                      local.get 5
                      local.get 1
                      i32.add
                      local.set 1
                      local.get 6
                      local.get 5
                      i32.add
                      local.tee 6
                      i32.load offset=4
                      local.set 5
                    end
                    local.get 6
                    local.get 5
                    i32.const -2
                    i32.and
                    i32.store offset=4
                    local.get 2
                    local.get 1
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 2
                    local.get 1
                    i32.add
                    local.get 1
                    i32.store
                    block  ;; label = @9
                      local.get 1
                      i32.const 256
                      i32.lt_u
                      br_if 0 (;@9;)
                      local.get 2
                      local.get 1
                      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h37918539f353b168E
                      br 7 (;@2;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1051532
                        local.tee 6
                        i32.const 1
                        local.get 1
                        i32.const 3
                        i32.shr_u
                        i32.shl
                        local.tee 5
                        i32.and
                        br_if 0 (;@10;)
                        i32.const 0
                        local.get 6
                        local.get 5
                        i32.or
                        i32.store offset=1051532
                        local.get 1
                        i32.const 248
                        i32.and
                        i32.const 1051268
                        i32.add
                        local.tee 1
                        local.set 6
                        br 1 (;@9;)
                      end
                      local.get 1
                      i32.const 248
                      i32.and
                      local.tee 6
                      i32.const 1051268
                      i32.add
                      local.set 1
                      local.get 6
                      i32.const 1051276
                      i32.add
                      i32.load
                      local.set 6
                    end
                    local.get 1
                    local.get 2
                    i32.store offset=8
                    local.get 6
                    local.get 2
                    i32.store offset=12
                    local.get 2
                    local.get 1
                    i32.store offset=12
                    local.get 2
                    local.get 6
                    i32.store offset=8
                    br 6 (;@2;)
                  end
                  i32.const 0
                  local.get 0
                  local.get 2
                  i32.sub
                  local.tee 1
                  i32.store offset=1051544
                  i32.const 0
                  i32.const 0
                  i32.load offset=1051552
                  local.tee 0
                  local.get 2
                  i32.add
                  local.tee 6
                  i32.store offset=1051552
                  local.get 6
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 2
                  i32.const 3
                  i32.or
                  i32.store offset=4
                  br 5 (;@2;)
                end
                i32.const 0
                i32.load offset=1051548
                local.set 0
                block  ;; label = @7
                  local.get 1
                  local.get 2
                  i32.sub
                  local.tee 6
                  i32.const 15
                  i32.gt_u
                  br_if 0 (;@7;)
                  i32.const 0
                  i32.const 0
                  i32.store offset=1051548
                  i32.const 0
                  i32.const 0
                  i32.store offset=1051540
                  local.get 0
                  local.get 1
                  i32.const 3
                  i32.or
                  i32.store offset=4
                  local.get 0
                  local.get 1
                  i32.add
                  local.tee 2
                  local.get 2
                  i32.load offset=4
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  br 5 (;@2;)
                end
                i32.const 0
                local.get 6
                i32.store offset=1051540
                i32.const 0
                local.get 0
                local.get 2
                i32.add
                local.tee 5
                i32.store offset=1051548
                local.get 5
                local.get 6
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                local.get 1
                i32.add
                local.get 6
                i32.store
                local.get 0
                local.get 2
                i32.const 3
                i32.or
                i32.store offset=4
                br 4 (;@2;)
              end
              local.get 1
              i32.const 4
              i32.add
              local.get 7
              local.get 8
              i32.add
              i32.store
              i32.const 0
              i32.const 0
              i32.load offset=1051552
              local.tee 0
              i32.const 15
              i32.add
              i32.const -8
              i32.and
              local.tee 1
              i32.const -8
              i32.add
              local.tee 6
              i32.store offset=1051552
              i32.const 0
              local.get 0
              local.get 1
              i32.sub
              i32.const 0
              i32.load offset=1051544
              local.get 8
              i32.add
              local.tee 1
              i32.add
              i32.const 8
              i32.add
              local.tee 5
              i32.store offset=1051544
              local.get 6
              local.get 5
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              i32.const 40
              i32.store offset=4
              i32.const 0
              i32.const 2097152
              i32.store offset=1051564
              br 2 (;@3;)
            end
            i32.const 0
            local.get 2
            i32.store offset=1051552
            i32.const 0
            i32.const 0
            i32.load offset=1051544
            local.get 1
            i32.add
            local.tee 1
            i32.store offset=1051544
            local.get 2
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            br 2 (;@2;)
          end
          i32.const 0
          local.get 2
          i32.store offset=1051548
          i32.const 0
          i32.const 0
          i32.load offset=1051540
          local.get 1
          i32.add
          local.tee 1
          i32.store offset=1051540
          local.get 2
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 1
          i32.add
          local.get 1
          i32.store
          br 1 (;@2;)
        end
        i32.const 0
        local.set 1
        i32.const 0
        i32.load offset=1051544
        local.tee 0
        local.get 2
        i32.le_u
        br_if 1 (;@1;)
        i32.const 0
        local.get 0
        local.get 2
        i32.sub
        local.tee 1
        i32.store offset=1051544
        i32.const 0
        i32.const 0
        i32.load offset=1051552
        local.tee 0
        local.get 2
        i32.add
        local.tee 6
        i32.store offset=1051552
        local.get 6
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        local.get 2
        i32.const 3
        i32.or
        i32.store offset=4
      end
      local.get 0
      i32.const 8
      i32.add
      local.set 1
    end
    local.get 1)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h8ebfbf97344dd34dE (type 10) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.const -8
    i32.add
    local.tee 1
    local.get 0
    i32.const -4
    i32.add
    i32.load
    local.tee 2
    i32.const -8
    i32.and
    local.tee 0
    i32.add
    local.set 3
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load
        local.tee 2
        local.get 0
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 1
          local.get 2
          i32.sub
          local.tee 1
          i32.const 0
          i32.load offset=1051548
          i32.ne
          br_if 0 (;@3;)
          local.get 3
          i32.load offset=4
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 0
          i32.store offset=1051540
          local.get 3
          local.get 3
          i32.load offset=4
          i32.const -2
          i32.and
          i32.store offset=4
          local.get 1
          local.get 0
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 3
          local.get 0
          i32.store
          return
        end
        local.get 1
        local.get 2
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$12unlink_chunk17hf2bd2fd6dcf32145E
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.load offset=4
                    local.tee 2
                    i32.const 2
                    i32.and
                    br_if 0 (;@8;)
                    local.get 3
                    i32.const 0
                    i32.load offset=1051552
                    i32.eq
                    br_if 2 (;@6;)
                    local.get 3
                    i32.const 0
                    i32.load offset=1051548
                    i32.eq
                    br_if 6 (;@2;)
                    local.get 3
                    local.get 2
                    i32.const -8
                    i32.and
                    local.tee 2
                    call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$12unlink_chunk17hf2bd2fd6dcf32145E
                    local.get 1
                    local.get 2
                    local.get 0
                    i32.add
                    local.tee 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 1
                    local.get 0
                    i32.add
                    local.get 0
                    i32.store
                    local.get 1
                    i32.const 0
                    i32.load offset=1051548
                    i32.ne
                    br_if 1 (;@7;)
                    i32.const 0
                    local.get 0
                    i32.store offset=1051540
                    return
                  end
                  local.get 3
                  local.get 2
                  i32.const -2
                  i32.and
                  i32.store offset=4
                  local.get 1
                  local.get 0
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 1
                  local.get 0
                  i32.add
                  local.get 0
                  i32.store
                end
                local.get 0
                i32.const 256
                i32.lt_u
                br_if 3 (;@3;)
                i32.const 31
                local.set 3
                block  ;; label = @7
                  local.get 0
                  i32.const 16777215
                  i32.gt_u
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 6
                  local.get 0
                  i32.const 8
                  i32.shr_u
                  i32.clz
                  local.tee 3
                  i32.sub
                  i32.shr_u
                  i32.const 1
                  i32.and
                  local.get 3
                  i32.const 1
                  i32.shl
                  i32.sub
                  i32.const 62
                  i32.add
                  local.set 3
                end
                local.get 1
                i64.const 0
                i64.store offset=16 align=4
                local.get 1
                local.get 3
                i32.store offset=28
                local.get 3
                i32.const 2
                i32.shl
                i32.const 1051124
                i32.add
                local.set 2
                i32.const 0
                i32.load offset=1051536
                i32.const 1
                local.get 3
                i32.shl
                local.tee 4
                i32.and
                br_if 1 (;@5;)
                local.get 2
                local.get 1
                i32.store
                local.get 1
                local.get 2
                i32.store offset=24
                local.get 1
                local.get 1
                i32.store offset=12
                local.get 1
                local.get 1
                i32.store offset=8
                i32.const 0
                i32.const 0
                i32.load offset=1051536
                local.get 4
                i32.or
                i32.store offset=1051536
                br 2 (;@4;)
              end
              i32.const 0
              local.get 1
              i32.store offset=1051552
              i32.const 0
              i32.const 0
              i32.load offset=1051544
              local.get 0
              i32.add
              local.tee 0
              i32.store offset=1051544
              local.get 1
              local.get 0
              i32.const 1
              i32.or
              i32.store offset=4
              block  ;; label = @6
                local.get 1
                i32.const 0
                i32.load offset=1051548
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                i32.const 0
                i32.store offset=1051540
                i32.const 0
                i32.const 0
                i32.store offset=1051548
              end
              local.get 0
              i32.const 0
              i32.load offset=1051564
              local.tee 4
              i32.le_u
              br_if 4 (;@1;)
              i32.const 0
              i32.load offset=1051552
              local.tee 3
              i32.eqz
              br_if 4 (;@1;)
              i32.const 0
              local.set 1
              block  ;; label = @6
                i32.const 0
                i32.load offset=1051544
                local.tee 5
                i32.const 41
                i32.lt_u
                br_if 0 (;@6;)
                i32.const 1051252
                local.set 0
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    i32.load
                    local.tee 2
                    local.get 3
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 3
                    local.get 2
                    local.get 0
                    i32.const 4
                    i32.add
                    i32.load
                    i32.add
                    i32.lt_u
                    br_if 2 (;@6;)
                  end
                  local.get 0
                  i32.load offset=8
                  local.tee 0
                  br_if 0 (;@7;)
                end
              end
              block  ;; label = @6
                i32.const 0
                i32.load offset=1051260
                local.tee 0
                i32.eqz
                br_if 0 (;@6;)
                i32.const 0
                local.set 1
                loop  ;; label = @7
                  local.get 1
                  i32.const 1
                  i32.add
                  local.set 1
                  local.get 0
                  i32.load offset=8
                  local.tee 0
                  br_if 0 (;@7;)
                end
              end
              i32.const 0
              local.get 1
              i32.const 4095
              local.get 1
              i32.const 4095
              i32.gt_u
              select
              i32.store offset=1051572
              local.get 5
              local.get 4
              i32.le_u
              br_if 4 (;@1;)
              i32.const 0
              i32.const -1
              i32.store offset=1051564
              br 4 (;@1;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.load
                  local.tee 4
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 0
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 4
                  local.set 3
                  br 1 (;@6;)
                end
                local.get 0
                i32.const 0
                i32.const 25
                local.get 3
                i32.const 1
                i32.shr_u
                i32.sub
                local.get 3
                i32.const 31
                i32.eq
                select
                i32.shl
                local.set 2
                loop  ;; label = @7
                  local.get 4
                  local.get 2
                  i32.const 29
                  i32.shr_u
                  i32.const 4
                  i32.and
                  i32.add
                  local.tee 5
                  i32.load offset=16
                  local.tee 3
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 2
                  i32.const 1
                  i32.shl
                  local.set 2
                  local.get 3
                  local.set 4
                  local.get 3
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 0
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 3
              i32.load offset=8
              local.tee 0
              local.get 1
              i32.store offset=12
              local.get 3
              local.get 1
              i32.store offset=8
              local.get 1
              i32.const 0
              i32.store offset=24
              local.get 1
              local.get 3
              i32.store offset=12
              local.get 1
              local.get 0
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 5
            i32.const 16
            i32.add
            local.get 1
            i32.store
            local.get 1
            local.get 4
            i32.store offset=24
            local.get 1
            local.get 1
            i32.store offset=12
            local.get 1
            local.get 1
            i32.store offset=8
          end
          i32.const 0
          local.set 1
          i32.const 0
          i32.const 0
          i32.load offset=1051572
          i32.const -1
          i32.add
          local.tee 0
          i32.store offset=1051572
          local.get 0
          br_if 2 (;@1;)
          block  ;; label = @4
            i32.const 0
            i32.load offset=1051260
            local.tee 0
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 1
            loop  ;; label = @5
              local.get 1
              i32.const 1
              i32.add
              local.set 1
              local.get 0
              i32.load offset=8
              local.tee 0
              br_if 0 (;@5;)
            end
          end
          i32.const 0
          local.get 1
          i32.const 4095
          local.get 1
          i32.const 4095
          i32.gt_u
          select
          i32.store offset=1051572
          return
        end
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1051532
            local.tee 3
            i32.const 1
            local.get 0
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 2
            i32.and
            br_if 0 (;@4;)
            i32.const 0
            local.get 3
            local.get 2
            i32.or
            i32.store offset=1051532
            local.get 0
            i32.const 248
            i32.and
            i32.const 1051268
            i32.add
            local.tee 0
            local.set 3
            br 1 (;@3;)
          end
          local.get 0
          i32.const 248
          i32.and
          local.tee 3
          i32.const 1051268
          i32.add
          local.set 0
          local.get 3
          i32.const 1051276
          i32.add
          i32.load
          local.set 3
        end
        local.get 0
        local.get 1
        i32.store offset=8
        local.get 3
        local.get 1
        i32.store offset=12
        local.get 1
        local.get 0
        i32.store offset=12
        local.get 1
        local.get 3
        i32.store offset=8
        return
      end
      i32.const 0
      local.get 1
      i32.store offset=1051548
      i32.const 0
      i32.const 0
      i32.load offset=1051540
      local.get 0
      i32.add
      local.tee 0
      i32.store offset=1051540
      local.get 1
      local.get 0
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 1
      local.get 0
      i32.add
      local.get 0
      i32.store
      return
    end)
  (func $_ZN4core9panicking9panic_fmt17h41cfed79b2ddbf13E (type 1) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 1
    i32.store16 offset=12
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    i32.const 4
    i32.add
    call $_RNvCs691rhTbG0Ee_7___rustc17rust_begin_unwind
    unreachable)
  (func $_ZN5alloc5alloc18handle_alloc_error17h538ce9133f14f3ccE (type 10) (param i32)
    local.get 0
    call $_RNvCs691rhTbG0Ee_7___rustc26___rust_alloc_error_handler
    unreachable)
  (func $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E (type 11) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 0
    i32.store offset=16
    local.get 3
    i32.const 1
    i32.store offset=4
    local.get 3
    i64.const 4
    i64.store offset=8 align=4
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    local.get 3
    local.get 3
    i32.const 24
    i32.add
    i32.store
    local.get 3
    local.get 2
    call $_ZN4core9panicking9panic_fmt17h41cfed79b2ddbf13E
    unreachable)
  (func $_RNvCs691rhTbG0Ee_7___rustc26___rust_alloc_error_handler (type 10) (param i32)
    local.get 0
    call $_RNvCs691rhTbG0Ee_7___rustc9___rdl_oom
    unreachable)
  (func $_RNvCs691rhTbG0Ee_7___rustc9___rdl_oom (type 10) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 1
    i32.const 2
    i32.store offset=20
    local.get 1
    i32.const 1049308
    i32.store offset=16
    local.get 1
    i64.const 1
    i64.store offset=28 align=4
    local.get 1
    i32.const 4
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 1
    local.get 1
    i32.const 40
    i32.add
    i32.store offset=24
    local.get 1
    i32.const 16
    i32.add
    call $_ZN4core9panicking18panic_nounwind_fmt17he35f61292ba119a3E
    unreachable)
  (func $_ZN5alloc7raw_vec11finish_grow17h6e60ee0c7c328190E (type 11) (param i32 i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.load offset=8
            local.tee 3
            br_if 0 (;@4;)
            i32.const 0
            i32.load8_u offset=1051120
            drop
            br 2 (;@2;)
          end
          local.get 2
          i32.load
          local.get 3
          local.get 1
          call $_RNvCs691rhTbG0Ee_7___rustc14___rust_realloc
          local.set 2
          br 2 (;@1;)
        end
        i32.const 0
        i32.load8_u offset=1051120
        drop
      end
      local.get 1
      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17hf076c5f6615165afE
      local.set 2
    end
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 2
    i32.const 1
    local.get 2
    select
    i32.store offset=4
    local.get 0
    local.get 2
    i32.eqz
    i32.store)
  (func $_RNvCs691rhTbG0Ee_7___rustc14___rust_realloc (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const -4
          i32.add
          local.tee 3
          i32.load
          local.tee 4
          i32.const -8
          i32.and
          local.tee 5
          i32.const 4
          i32.const 8
          local.get 4
          i32.const 3
          i32.and
          local.tee 6
          select
          local.get 1
          i32.add
          i32.lt_u
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 6
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            local.get 1
            i32.const 39
            i32.add
            i32.gt_u
            br_if 2 (;@2;)
          end
          i32.const 16
          local.get 2
          i32.const 11
          i32.add
          i32.const -8
          i32.and
          local.get 2
          i32.const 11
          i32.lt_u
          select
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 6
                br_if 0 (;@6;)
                local.get 1
                i32.const 256
                i32.lt_u
                br_if 1 (;@5;)
                local.get 5
                local.get 1
                i32.const 4
                i32.or
                i32.lt_u
                br_if 1 (;@5;)
                local.get 5
                local.get 1
                i32.sub
                i32.const 131073
                i32.ge_u
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              local.get 0
              i32.const -8
              i32.add
              local.tee 7
              local.get 5
              i32.add
              local.set 6
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 5
                      local.get 1
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 6
                      i32.const 0
                      i32.load offset=1051552
                      i32.eq
                      br_if 3 (;@6;)
                      local.get 6
                      i32.const 0
                      i32.load offset=1051548
                      i32.eq
                      br_if 2 (;@7;)
                      local.get 6
                      i32.load offset=4
                      local.tee 4
                      i32.const 2
                      i32.and
                      br_if 4 (;@5;)
                      local.get 4
                      i32.const -8
                      i32.and
                      local.tee 4
                      local.get 5
                      i32.add
                      local.tee 5
                      local.get 1
                      i32.lt_u
                      br_if 4 (;@5;)
                      local.get 6
                      local.get 4
                      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$12unlink_chunk17hf2bd2fd6dcf32145E
                      local.get 5
                      local.get 1
                      i32.sub
                      local.tee 2
                      i32.const 16
                      i32.lt_u
                      br_if 1 (;@8;)
                      local.get 3
                      local.get 1
                      local.get 3
                      i32.load
                      i32.const 1
                      i32.and
                      i32.or
                      i32.const 2
                      i32.or
                      i32.store
                      local.get 7
                      local.get 1
                      i32.add
                      local.tee 1
                      local.get 2
                      i32.const 3
                      i32.or
                      i32.store offset=4
                      local.get 7
                      local.get 5
                      i32.add
                      local.tee 5
                      local.get 5
                      i32.load offset=4
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      local.get 1
                      local.get 2
                      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h1cc90da7f6233a6dE
                      local.get 0
                      return
                    end
                    local.get 5
                    local.get 1
                    i32.sub
                    local.tee 2
                    i32.const 15
                    i32.le_u
                    br_if 4 (;@4;)
                    local.get 3
                    local.get 1
                    local.get 4
                    i32.const 1
                    i32.and
                    i32.or
                    i32.const 2
                    i32.or
                    i32.store
                    local.get 7
                    local.get 1
                    i32.add
                    local.tee 5
                    local.get 2
                    i32.const 3
                    i32.or
                    i32.store offset=4
                    local.get 6
                    local.get 6
                    i32.load offset=4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 5
                    local.get 2
                    call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h1cc90da7f6233a6dE
                    local.get 0
                    return
                  end
                  local.get 3
                  local.get 5
                  local.get 3
                  i32.load
                  i32.const 1
                  i32.and
                  i32.or
                  i32.const 2
                  i32.or
                  i32.store
                  local.get 7
                  local.get 5
                  i32.add
                  local.tee 2
                  local.get 2
                  i32.load offset=4
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 0
                  return
                end
                i32.const 0
                i32.load offset=1051540
                local.get 5
                i32.add
                local.tee 5
                local.get 1
                i32.lt_u
                br_if 1 (;@5;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    local.get 1
                    i32.sub
                    local.tee 2
                    i32.const 15
                    i32.gt_u
                    br_if 0 (;@8;)
                    local.get 3
                    local.get 5
                    local.get 4
                    i32.const 1
                    i32.and
                    i32.or
                    i32.const 2
                    i32.or
                    i32.store
                    local.get 7
                    local.get 5
                    i32.add
                    local.tee 2
                    local.get 2
                    i32.load offset=4
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    i32.const 0
                    local.set 2
                    i32.const 0
                    local.set 1
                    br 1 (;@7;)
                  end
                  local.get 3
                  local.get 1
                  local.get 4
                  i32.const 1
                  i32.and
                  i32.or
                  i32.const 2
                  i32.or
                  i32.store
                  local.get 7
                  local.get 1
                  i32.add
                  local.tee 1
                  local.get 2
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 7
                  local.get 5
                  i32.add
                  local.tee 5
                  local.get 2
                  i32.store
                  local.get 5
                  local.get 5
                  i32.load offset=4
                  i32.const -2
                  i32.and
                  i32.store offset=4
                end
                i32.const 0
                local.get 1
                i32.store offset=1051548
                i32.const 0
                local.get 2
                i32.store offset=1051540
                local.get 0
                return
              end
              i32.const 0
              i32.load offset=1051544
              local.get 5
              i32.add
              local.tee 5
              local.get 1
              i32.gt_u
              br_if 4 (;@1;)
            end
            block  ;; label = @5
              local.get 2
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17hf076c5f6615165afE
              local.tee 5
              br_if 0 (;@5;)
              i32.const 0
              return
            end
            block  ;; label = @5
              local.get 2
              i32.const -4
              i32.const -8
              local.get 3
              i32.load
              local.tee 1
              i32.const 3
              i32.and
              select
              local.get 1
              i32.const -8
              i32.and
              i32.add
              local.tee 1
              local.get 2
              local.get 1
              i32.lt_u
              select
              local.tee 2
              i32.eqz
              br_if 0 (;@5;)
              local.get 5
              local.get 0
              local.get 2
              memory.copy
            end
            local.get 0
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h8ebfbf97344dd34dE
            local.get 5
            local.set 0
          end
          local.get 0
          return
        end
        i32.const 1050740
        i32.const 46
        i32.const 1050788
        call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
        unreachable
      end
      i32.const 1050804
      i32.const 46
      i32.const 1050852
      call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
      unreachable
    end
    local.get 3
    local.get 1
    local.get 4
    i32.const 1
    i32.and
    i32.or
    i32.const 2
    i32.or
    i32.store
    local.get 7
    local.get 1
    i32.add
    local.tee 2
    local.get 5
    local.get 1
    i32.sub
    local.tee 5
    i32.const 1
    i32.or
    i32.store offset=4
    i32.const 0
    local.get 5
    i32.store offset=1051544
    i32.const 0
    local.get 2
    i32.store offset=1051552
    local.get 0)
  (func $_ZN5alloc7raw_vec12handle_error17h57ad9ee517c44fc6E (type 11) (param i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call $_ZN5alloc5alloc18handle_alloc_error17h538ce9133f14f3ccE
      unreachable
    end
    local.get 2
    call $_ZN5alloc7raw_vec17capacity_overflow17hfc61731a92216a2cE
    unreachable)
  (func $_ZN5alloc7raw_vec17capacity_overflow17hfc61731a92216a2cE (type 10) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 0
    i32.store offset=24
    local.get 1
    i32.const 1
    i32.store offset=12
    local.get 1
    i32.const 1049192
    i32.store offset=8
    local.get 1
    i64.const 4
    i64.store offset=16 align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    call $_ZN4core9panicking9panic_fmt17h41cfed79b2ddbf13E
    unreachable)
  (func $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h10d43ed3b5ffe62fE (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 10
    local.set 3
    local.get 0
    i32.load
    local.tee 4
    local.set 5
    block  ;; label = @1
      local.get 4
      i32.const 1000
      i32.lt_u
      br_if 0 (;@1;)
      i32.const 10
      local.set 3
      local.get 4
      local.set 0
      loop  ;; label = @2
        local.get 2
        i32.const 6
        i32.add
        local.get 3
        i32.add
        local.tee 6
        i32.const -3
        i32.add
        local.get 0
        local.get 0
        i32.const 10000
        i32.div_u
        local.tee 5
        i32.const 10000
        i32.mul
        i32.sub
        local.tee 7
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 8
        i32.const 1
        i32.shl
        local.tee 9
        i32.const 1049882
        i32.add
        i32.load8_u
        i32.store8
        local.get 6
        i32.const -4
        i32.add
        local.get 9
        i32.const 1049881
        i32.add
        i32.load8_u
        i32.store8
        local.get 6
        i32.const -1
        i32.add
        local.get 7
        local.get 8
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        local.tee 7
        i32.const 1049882
        i32.add
        i32.load8_u
        i32.store8
        local.get 6
        i32.const -2
        i32.add
        local.get 7
        i32.const 1049881
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const -4
        i32.add
        local.set 3
        local.get 0
        i32.const 9999999
        i32.gt_u
        local.set 6
        local.get 5
        local.set 0
        local.get 6
        br_if 0 (;@2;)
      end
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        i32.const 9
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.set 0
        br 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.add
      i32.const -1
      i32.add
      local.get 5
      local.get 5
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 0
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      local.tee 6
      i32.const 1049882
      i32.add
      i32.load8_u
      i32.store8
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -2
      i32.add
      local.tee 3
      i32.add
      local.get 6
      i32.const 1049881
      i32.add
      i32.load8_u
      i32.store8
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 2
      i32.const 6
      i32.add
      local.get 3
      i32.const -1
      i32.add
      local.tee 3
      i32.add
      local.get 0
      i32.const 1
      i32.shl
      i32.const 30
      i32.and
      i32.const 1049882
      i32.add
      i32.load8_u
      i32.store8
    end
    local.get 1
    local.get 2
    i32.const 6
    i32.add
    local.get 3
    i32.add
    i32.const 10
    local.get 3
    i32.sub
    call $_ZN4core3fmt9Formatter12pad_integral17hafdfc3db6446f97dE
    local.set 0
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $_ZN4core9panicking18panic_nounwind_fmt17he35f61292ba119a3E (type 10) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 1
    local.get 0
    i64.load align=4
    i64.store offset=8
    local.get 1
    i32.const 0
    i32.store16 offset=44
    local.get 1
    i32.const 1049324
    i32.store offset=40
    local.get 1
    local.get 1
    i32.const 8
    i32.add
    i32.store offset=36
    local.get 1
    i32.const 36
    i32.add
    call $_RNvCs691rhTbG0Ee_7___rustc17rust_begin_unwind
    unreachable)
  (func $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h487f4c6d43e5ea5fE (type 11) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 2
          i32.add
          local.tee 2
          local.get 1
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 4
          br 1 (;@2;)
        end
        i32.const 0
        local.set 4
        block  ;; label = @3
          local.get 2
          local.get 0
          i32.load
          local.tee 5
          i32.const 1
          i32.shl
          local.tee 1
          local.get 2
          local.get 1
          i32.gt_u
          select
          local.tee 1
          i32.const 8
          local.get 1
          i32.const 8
          i32.gt_u
          select
          local.tee 1
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 0
        local.set 2
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 5
          i32.store offset=28
          local.get 3
          local.get 0
          i32.load offset=4
          i32.store offset=20
          i32.const 1
          local.set 2
        end
        local.get 3
        local.get 2
        i32.store offset=24
        local.get 3
        i32.const 8
        i32.add
        local.get 1
        local.get 3
        i32.const 20
        i32.add
        call $_ZN5alloc7raw_vec11finish_grow17h6e60ee0c7c328190E
        local.get 3
        i32.load offset=8
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=16
        local.set 0
        local.get 3
        i32.load offset=12
        local.set 4
      end
      local.get 4
      local.get 0
      i32.const 1049232
      call $_ZN5alloc7raw_vec12handle_error17h57ad9ee517c44fc6E
      unreachable
    end
    local.get 3
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN5alloc3fmt6format12format_inner17hd51360b5065df943E (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.load offset=4
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 1
              i32.load
              local.set 4
              local.get 3
              i32.const 3
              i32.and
              local.set 5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.const 4
                  i32.ge_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 6
                  i32.const 0
                  local.set 7
                  br 1 (;@6;)
                end
                local.get 4
                i32.const 28
                i32.add
                local.set 8
                local.get 3
                i32.const -4
                i32.and
                local.set 9
                i32.const 0
                local.set 6
                i32.const 0
                local.set 7
                loop  ;; label = @7
                  local.get 8
                  i32.load
                  local.get 8
                  i32.const -8
                  i32.add
                  i32.load
                  local.get 8
                  i32.const -16
                  i32.add
                  i32.load
                  local.get 8
                  i32.const -24
                  i32.add
                  i32.load
                  local.get 6
                  i32.add
                  i32.add
                  i32.add
                  i32.add
                  local.set 6
                  local.get 8
                  i32.const 32
                  i32.add
                  local.set 8
                  local.get 9
                  local.get 7
                  i32.const 4
                  i32.add
                  local.tee 7
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              block  ;; label = @6
                local.get 5
                i32.eqz
                br_if 0 (;@6;)
                local.get 7
                i32.const 3
                i32.shl
                local.get 4
                i32.add
                i32.const 4
                i32.add
                local.set 8
                loop  ;; label = @7
                  local.get 8
                  i32.load
                  local.get 6
                  i32.add
                  local.set 6
                  local.get 8
                  i32.const 8
                  i32.add
                  local.set 8
                  local.get 5
                  i32.const -1
                  i32.add
                  local.tee 5
                  br_if 0 (;@7;)
                end
              end
              local.get 1
              i32.load offset=12
              i32.eqz
              br_if 2 (;@3;)
              local.get 6
              i32.const 15
              i32.gt_u
              br_if 1 (;@4;)
              local.get 4
              i32.load offset=4
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            i32.const 0
            local.set 6
            local.get 1
            i32.load offset=12
            i32.eqz
            br_if 2 (;@2;)
          end
          local.get 6
          i32.const 0
          local.get 6
          i32.const 0
          i32.gt_s
          select
          i32.const 1
          i32.shl
          local.set 6
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.const -1
            i32.le_s
            br_if 0 (;@4;)
            local.get 6
            i32.eqz
            br_if 2 (;@2;)
            i32.const 0
            i32.load8_u offset=1051120
            drop
            local.get 6
            call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17hf076c5f6615165afE
            local.tee 8
            i32.eqz
            br_if 1 (;@3;)
            br 3 (;@1;)
          end
          i32.const 1049368
          call $_ZN5alloc7raw_vec17capacity_overflow17hfc61731a92216a2cE
          unreachable
        end
        local.get 6
        call $_ZN5alloc5alloc18handle_alloc_error17h538ce9133f14f3ccE
        unreachable
      end
      i32.const 1
      local.set 8
      i32.const 0
      local.set 6
    end
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    local.get 8
    i32.store offset=4
    local.get 2
    local.get 6
    i32.store
    block  ;; label = @1
      local.get 3
      br_table 0 (;@1;) 0 (;@1;) 0 (;@1;)
    end
    block  ;; label = @1
      local.get 2
      i32.const 1049148
      local.get 1
      call $_ZN4core3fmt5write17h68542eb4423e8992E
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i64.load align=4
      i64.store align=4
      local.get 0
      i32.const 8
      i32.add
      local.get 2
      i32.const 8
      i32.add
      i32.load
      i32.store
      local.get 2
      i32.const 16
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 1049400
    i32.const 86
    local.get 2
    i32.const 15
    i32.add
    i32.const 1049384
    i32.const 1049512
    call $_ZN4core6result13unwrap_failed17h4e312bd8e5eb4431E
    unreachable)
  (func $_ZN4core3fmt5write17h68542eb4423e8992E (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=4
    local.get 3
    local.get 0
    i32.store
    local.get 3
    i64.const 3758096416
    i64.store offset=8 align=4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=16
              local.tee 4
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=20
              local.tee 1
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 2
            i32.load offset=12
            local.tee 0
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.load offset=8
            local.tee 1
            local.get 0
            i32.const 3
            i32.shl
            i32.add
            local.set 5
            local.get 0
            i32.const -1
            i32.add
            i32.const 536870911
            i32.and
            i32.const 1
            i32.add
            local.set 6
            local.get 2
            i32.load
            local.set 0
            loop  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                i32.load
                local.get 0
                i32.load
                local.get 7
                local.get 3
                i32.load offset=4
                i32.load offset=12
                call_indirect (type 2)
                i32.eqz
                br_if 0 (;@6;)
                i32.const 1
                local.set 1
                br 5 (;@1;)
              end
              block  ;; label = @6
                local.get 1
                i32.load
                local.get 3
                local.get 1
                i32.const 4
                i32.add
                i32.load
                call_indirect (type 0)
                i32.eqz
                br_if 0 (;@6;)
                i32.const 1
                local.set 1
                br 5 (;@1;)
              end
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 1
              i32.const 8
              i32.add
              local.tee 1
              local.get 5
              i32.eq
              br_if 3 (;@2;)
              br 0 (;@5;)
            end
          end
          local.get 1
          i32.const 24
          i32.mul
          local.set 8
          local.get 1
          i32.const -1
          i32.add
          i32.const 536870911
          i32.and
          i32.const 1
          i32.add
          local.set 6
          local.get 2
          i32.load offset=8
          local.set 9
          local.get 2
          i32.load
          local.set 0
          i32.const 0
          local.set 7
          loop  ;; label = @4
            block  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 1
              i32.eqz
              br_if 0 (;@5;)
              local.get 3
              i32.load
              local.get 0
              i32.load
              local.get 1
              local.get 3
              i32.load offset=4
              i32.load offset=12
              call_indirect (type 2)
              i32.eqz
              br_if 0 (;@5;)
              i32.const 1
              local.set 1
              br 4 (;@1;)
            end
            i32.const 0
            local.set 5
            i32.const 0
            local.set 10
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  local.get 7
                  i32.add
                  local.tee 1
                  i32.const 8
                  i32.add
                  i32.load16_u
                  br_table 0 (;@7;) 1 (;@6;) 2 (;@5;) 0 (;@7;)
                end
                local.get 1
                i32.const 10
                i32.add
                i32.load16_u
                local.set 10
                br 1 (;@5;)
              end
              local.get 9
              local.get 1
              i32.const 12
              i32.add
              i32.load
              i32.const 3
              i32.shl
              i32.add
              i32.load16_u offset=4
              local.set 10
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load16_u
                  br_table 0 (;@7;) 1 (;@6;) 2 (;@5;) 0 (;@7;)
                end
                local.get 1
                i32.const 2
                i32.add
                i32.load16_u
                local.set 5
                br 1 (;@5;)
              end
              local.get 9
              local.get 1
              i32.const 4
              i32.add
              i32.load
              i32.const 3
              i32.shl
              i32.add
              i32.load16_u offset=4
              local.set 5
            end
            local.get 3
            local.get 5
            i32.store16 offset=14
            local.get 3
            local.get 10
            i32.store16 offset=12
            local.get 3
            local.get 1
            i32.const 20
            i32.add
            i32.load
            i32.store offset=8
            block  ;; label = @5
              local.get 9
              local.get 1
              i32.const 16
              i32.add
              i32.load
              i32.const 3
              i32.shl
              i32.add
              local.tee 1
              i32.load
              local.get 3
              local.get 1
              i32.load offset=4
              call_indirect (type 0)
              i32.eqz
              br_if 0 (;@5;)
              i32.const 1
              local.set 1
              br 4 (;@1;)
            end
            local.get 0
            i32.const 8
            i32.add
            local.set 0
            local.get 8
            local.get 7
            i32.const 24
            i32.add
            local.tee 7
            i32.eq
            br_if 2 (;@2;)
            br 0 (;@4;)
          end
        end
        i32.const 0
        local.set 6
      end
      block  ;; label = @2
        local.get 6
        local.get 2
        i32.load offset=4
        i32.ge_u
        br_if 0 (;@2;)
        local.get 3
        i32.load
        local.get 2
        i32.load
        local.get 6
        i32.const 3
        i32.shl
        i32.add
        local.tee 1
        i32.load
        local.get 1
        i32.load offset=4
        local.get 3
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 2)
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
    end
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7b15f6ce7cdec3bcE (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.load
    i32.const 1050336
    i32.const 5
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 2))
  (func $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7e85e460ea7b6beeE (type 10) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=4
          local.tee 2
          i32.const -4
          i32.add
          i32.load
          local.tee 0
          i32.const -8
          i32.and
          local.tee 3
          i32.const 4
          i32.const 8
          local.get 0
          i32.const 3
          i32.and
          local.tee 0
          select
          local.get 1
          i32.add
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            i32.const 39
            i32.add
            i32.gt_u
            br_if 3 (;@1;)
          end
          local.get 2
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h8ebfbf97344dd34dE
        end
        return
      end
      i32.const 1050740
      i32.const 46
      i32.const 1050788
      call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
      unreachable
    end
    i32.const 1050804
    i32.const 46
    i32.const 1050852
    call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
    unreachable)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h7850057311a0cef1E (type 2) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      local.get 0
      i32.load
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 2
      call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h487f4c6d43e5ea5fE
      local.get 0
      i32.load offset=8
      local.set 3
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      memory.copy
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h61f319b0423b9825E (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 2048
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 2
        local.set 3
        br 1 (;@1;)
      end
      i32.const 3
      i32.const 4
      local.get 1
      i32.const 65536
      i32.lt_u
      select
      local.set 3
    end
    local.get 2
    local.set 4
    block  ;; label = @1
      local.get 3
      local.get 0
      i32.load
      local.get 2
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h487f4c6d43e5ea5fE
      local.get 0
      i32.load offset=8
      local.set 4
    end
    local.get 0
    i32.load offset=4
    local.get 4
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 128
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 2048
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 1
            i32.const 65536
            i32.lt_u
            br_if 0 (;@4;)
            local.get 4
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=3
            local.get 4
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8
            local.get 4
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 4
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            br 3 (;@1;)
          end
          local.get 4
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          local.get 4
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8
          local.get 4
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          br 2 (;@1;)
        end
        local.get 4
        local.get 1
        i32.store8
        br 1 (;@1;)
      end
      local.get 4
      local.get 1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get 4
      local.get 1
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      i32.store8
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_ZN4core3fmt5Write9write_fmt17h2c5113f660bc4b2fE (type 0) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      br_table 0 (;@1;) 0 (;@1;) 0 (;@1;)
    end
    local.get 0
    i32.const 1049148
    local.get 1
    call $_ZN4core3fmt5write17h68542eb4423e8992E)
  (func $_RNvCs691rhTbG0Ee_7___rustc17rust_begin_unwind (type 10) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 1
    i32.store offset=36
    local.get 1
    i32.const 1050868
    i32.store offset=32
    local.get 1
    i64.const 1
    i64.store offset=44 align=4
    local.get 1
    local.get 0
    i32.load
    i32.store offset=56
    local.get 1
    i32.const 5
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i32.const 56
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=16
    local.get 1
    local.get 1
    i32.const 16
    i32.add
    i32.store offset=40
    local.get 1
    i32.const 4
    i32.add
    local.get 1
    i32.const 32
    i32.add
    call $_ZN5alloc3fmt6format17he043365795a64681E
    local.get 1
    local.get 0
    i32.load offset=4
    i32.store offset=28
    local.get 1
    i32.const 1
    i32.store offset=36
    local.get 1
    i32.const 1050868
    i32.store offset=32
    local.get 1
    i64.const 1
    i64.store offset=44 align=4
    local.get 1
    i32.const 6
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i32.const 28
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=56
    local.get 1
    local.get 1
    i32.const 56
    i32.add
    i32.store offset=40
    local.get 1
    i32.const 16
    i32.add
    local.get 1
    i32.const 32
    i32.add
    call $_ZN5alloc3fmt6format17he043365795a64681E
    i32.const 6
    i32.const 0
    i32.const 0
    i32.const 0
    local.get 1
    i32.load offset=20
    local.tee 0
    local.get 1
    i32.load offset=16
    local.tee 2
    i32.const -2147483648
    i32.eq
    local.tee 3
    select
    i32.const 0
    local.get 1
    i32.load offset=24
    local.get 3
    select
    local.get 1
    i32.load offset=8
    local.get 1
    i32.load offset=12
    call $_ZN5metra3sys3log17h3d0286cba4cdea4eE
    local.get 1
    i32.const 4
    i32.add
    call $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3a8e9555fe7a58aaE
    local.get 2
    local.get 0
    call $_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he1cfdf7a6bf820e2E
    unreachable)
  (func $_ZN4core3fmt9Formatter12pad_integral17hafdfc3db6446f97dE (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    i32.const 43
    i32.const 1114112
    local.get 0
    i32.load offset=8
    local.tee 3
    i32.const 2097152
    i32.and
    local.tee 4
    select
    local.set 5
    local.get 3
    i32.const 8388608
    i32.and
    i32.const 23
    i32.shr_u
    local.set 6
    block  ;; label = @1
      block  ;; label = @2
        local.get 4
        i32.const 21
        i32.shr_u
        local.get 2
        i32.add
        local.tee 7
        local.get 0
        i32.load16_u offset=12
        local.tee 8
        i32.ge_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 16777216
              i32.and
              br_if 0 (;@5;)
              local.get 8
              local.get 7
              i32.sub
              local.set 8
              i32.const 0
              local.set 4
              i32.const 0
              local.set 7
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    i32.const 29
                    i32.shr_u
                    i32.const 3
                    i32.and
                    br_table 2 (;@6;) 0 (;@8;) 1 (;@7;) 0 (;@8;) 2 (;@6;)
                  end
                  local.get 8
                  local.set 7
                  br 1 (;@6;)
                end
                local.get 8
                i32.const 65534
                i32.and
                i32.const 1
                i32.shr_u
                local.set 7
              end
              local.get 3
              i32.const 2097151
              i32.and
              local.set 9
              local.get 0
              i32.load offset=4
              local.set 10
              local.get 0
              i32.load
              local.set 0
              loop  ;; label = @6
                local.get 4
                i32.const 65535
                i32.and
                local.get 7
                i32.const 65535
                i32.and
                i32.ge_u
                br_if 2 (;@4;)
                i32.const 1
                local.set 3
                local.get 4
                i32.const 1
                i32.add
                local.set 4
                local.get 0
                local.get 9
                local.get 10
                i32.load offset=16
                call_indirect (type 0)
                i32.eqz
                br_if 0 (;@6;)
                br 5 (;@1;)
              end
            end
            local.get 0
            local.get 0
            i64.load offset=8 align=4
            local.tee 11
            i32.wrap_i64
            i32.const -1612709888
            i32.and
            i32.const 536870960
            i32.or
            i32.store offset=8
            i32.const 1
            local.set 3
            local.get 0
            i32.load
            local.tee 10
            local.get 0
            i32.load offset=4
            local.tee 9
            local.get 5
            local.get 6
            call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h9b7f224add674e2aE
            br_if 3 (;@1;)
            i32.const 0
            local.set 4
            local.get 8
            local.get 7
            i32.sub
            i32.const 65535
            i32.and
            local.set 7
            loop  ;; label = @5
              local.get 4
              i32.const 65535
              i32.and
              local.get 7
              i32.ge_u
              br_if 2 (;@3;)
              i32.const 1
              local.set 3
              local.get 4
              i32.const 1
              i32.add
              local.set 4
              local.get 10
              i32.const 48
              local.get 9
              i32.load offset=16
              call_indirect (type 0)
              i32.eqz
              br_if 0 (;@5;)
              br 4 (;@1;)
            end
          end
          i32.const 1
          local.set 3
          local.get 0
          local.get 10
          local.get 5
          local.get 6
          call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h9b7f224add674e2aE
          br_if 2 (;@1;)
          local.get 0
          local.get 1
          local.get 2
          local.get 10
          i32.load offset=12
          call_indirect (type 2)
          br_if 2 (;@1;)
          local.get 8
          local.get 7
          i32.sub
          i32.const 65535
          i32.and
          local.set 7
          i32.const 0
          local.set 4
          loop  ;; label = @4
            block  ;; label = @5
              local.get 4
              i32.const 65535
              i32.and
              local.get 7
              i32.lt_u
              br_if 0 (;@5;)
              i32.const 0
              return
            end
            i32.const 1
            local.set 3
            local.get 4
            i32.const 1
            i32.add
            local.set 4
            local.get 0
            local.get 9
            local.get 10
            i32.load offset=16
            call_indirect (type 0)
            i32.eqz
            br_if 0 (;@4;)
            br 3 (;@1;)
          end
        end
        i32.const 1
        local.set 3
        local.get 10
        local.get 1
        local.get 2
        local.get 9
        i32.load offset=12
        call_indirect (type 2)
        br_if 1 (;@1;)
        local.get 0
        local.get 11
        i64.store offset=8 align=4
        i32.const 0
        return
      end
      i32.const 1
      local.set 3
      local.get 0
      i32.load
      local.tee 4
      local.get 0
      i32.load offset=4
      local.tee 0
      local.get 5
      local.get 6
      call $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h9b7f224add674e2aE
      br_if 0 (;@1;)
      local.get 4
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=12
      call_indirect (type 2)
      local.set 3
    end
    local.get 3)
  (func $_ZN4core3fmt9Formatter12pad_integral12write_prefix17h9b7f224add674e2aE (type 12) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 2
      i32.const 1114112
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      i32.load offset=16
      call_indirect (type 0)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    block  ;; label = @1
      local.get 3
      br_if 0 (;@1;)
      i32.const 0
      return
    end
    local.get 0
    local.get 3
    i32.const 0
    local.get 1
    i32.load offset=12
    call_indirect (type 2))
  (func $_ZN4core3fmt9Formatter3pad17h5a5f539bbb272398E (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.const 402653184
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const 268435456
                i32.and
                i32.eqz
                br_if 0 (;@6;)
                local.get 0
                i32.load16_u offset=14
                local.tee 4
                br_if 1 (;@5;)
                i32.const 0
                local.set 2
                i32.const 0
                local.set 5
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 2
                i32.const 16
                i32.lt_u
                br_if 0 (;@6;)
                local.get 2
                local.get 1
                local.get 1
                i32.const 3
                i32.add
                i32.const -4
                i32.and
                local.tee 5
                i32.sub
                local.tee 6
                i32.add
                local.tee 7
                i32.const 3
                i32.and
                local.set 8
                i32.const 0
                local.set 9
                i32.const 0
                local.set 10
                block  ;; label = @7
                  local.get 1
                  local.get 5
                  i32.eq
                  local.tee 11
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 10
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 6
                      i32.const -4
                      i32.le_u
                      br_if 0 (;@9;)
                      i32.const 0
                      local.set 4
                      br 1 (;@8;)
                    end
                    i32.const 0
                    local.set 4
                    loop  ;; label = @9
                      local.get 10
                      local.get 1
                      local.get 4
                      i32.add
                      local.tee 12
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      i32.add
                      local.get 12
                      i32.const 1
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      i32.add
                      local.get 12
                      i32.const 2
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      i32.add
                      local.get 12
                      i32.const 3
                      i32.add
                      i32.load8_s
                      i32.const -65
                      i32.gt_s
                      i32.add
                      local.set 10
                      local.get 4
                      i32.const 4
                      i32.add
                      local.tee 4
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 11
                  br_if 0 (;@7;)
                  local.get 1
                  local.get 4
                  i32.add
                  local.set 12
                  loop  ;; label = @8
                    local.get 10
                    local.get 12
                    i32.load8_s
                    i32.const -65
                    i32.gt_s
                    i32.add
                    local.set 10
                    local.get 12
                    i32.const 1
                    i32.add
                    local.set 12
                    local.get 6
                    i32.const 1
                    i32.add
                    local.tee 6
                    br_if 0 (;@8;)
                  end
                end
                block  ;; label = @7
                  local.get 8
                  i32.eqz
                  br_if 0 (;@7;)
                  local.get 5
                  local.get 7
                  i32.const -4
                  i32.and
                  i32.add
                  local.tee 12
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  local.set 9
                  local.get 8
                  i32.const 1
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 9
                  local.get 12
                  i32.load8_s offset=1
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 9
                  local.get 8
                  i32.const 2
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 9
                  local.get 12
                  i32.load8_s offset=2
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 9
                end
                local.get 7
                i32.const 2
                i32.shr_u
                local.set 6
                local.get 9
                local.get 10
                i32.add
                local.set 9
                loop  ;; label = @7
                  local.get 5
                  local.set 8
                  local.get 6
                  i32.eqz
                  br_if 4 (;@3;)
                  local.get 6
                  i32.const 192
                  local.get 6
                  i32.const 192
                  i32.lt_u
                  select
                  local.tee 7
                  i32.const 3
                  i32.and
                  local.set 13
                  local.get 7
                  i32.const 2
                  i32.shl
                  local.set 11
                  i32.const 0
                  local.set 10
                  block  ;; label = @8
                    local.get 6
                    i32.const 4
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 8
                    local.get 11
                    i32.const 1008
                    i32.and
                    i32.add
                    local.set 4
                    i32.const 0
                    local.set 10
                    local.get 8
                    local.set 5
                    loop  ;; label = @9
                      local.get 5
                      i32.const 12
                      i32.add
                      i32.load
                      local.tee 12
                      i32.const -1
                      i32.xor
                      i32.const 7
                      i32.shr_u
                      local.get 12
                      i32.const 6
                      i32.shr_u
                      i32.or
                      i32.const 16843009
                      i32.and
                      local.get 5
                      i32.const 8
                      i32.add
                      i32.load
                      local.tee 12
                      i32.const -1
                      i32.xor
                      i32.const 7
                      i32.shr_u
                      local.get 12
                      i32.const 6
                      i32.shr_u
                      i32.or
                      i32.const 16843009
                      i32.and
                      local.get 5
                      i32.const 4
                      i32.add
                      i32.load
                      local.tee 12
                      i32.const -1
                      i32.xor
                      i32.const 7
                      i32.shr_u
                      local.get 12
                      i32.const 6
                      i32.shr_u
                      i32.or
                      i32.const 16843009
                      i32.and
                      local.get 5
                      i32.load
                      local.tee 12
                      i32.const -1
                      i32.xor
                      i32.const 7
                      i32.shr_u
                      local.get 12
                      i32.const 6
                      i32.shr_u
                      i32.or
                      i32.const 16843009
                      i32.and
                      local.get 10
                      i32.add
                      i32.add
                      i32.add
                      i32.add
                      local.set 10
                      local.get 5
                      i32.const 16
                      i32.add
                      local.tee 5
                      local.get 4
                      i32.ne
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 6
                  local.get 7
                  i32.sub
                  local.set 6
                  local.get 8
                  local.get 11
                  i32.add
                  local.set 5
                  local.get 10
                  i32.const 8
                  i32.shr_u
                  i32.const 16711935
                  i32.and
                  local.get 10
                  i32.const 16711935
                  i32.and
                  i32.add
                  i32.const 65537
                  i32.mul
                  i32.const 16
                  i32.shr_u
                  local.get 9
                  i32.add
                  local.set 9
                  local.get 13
                  i32.eqz
                  br_if 0 (;@7;)
                end
                local.get 8
                local.get 7
                i32.const 252
                i32.and
                i32.const 2
                i32.shl
                i32.add
                local.tee 10
                i32.load
                local.tee 5
                i32.const -1
                i32.xor
                i32.const 7
                i32.shr_u
                local.get 5
                i32.const 6
                i32.shr_u
                i32.or
                i32.const 16843009
                i32.and
                local.set 5
                block  ;; label = @7
                  local.get 13
                  i32.const 1
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 10
                  i32.load offset=4
                  local.tee 12
                  i32.const -1
                  i32.xor
                  i32.const 7
                  i32.shr_u
                  local.get 12
                  i32.const 6
                  i32.shr_u
                  i32.or
                  i32.const 16843009
                  i32.and
                  local.get 5
                  i32.add
                  local.set 5
                  local.get 13
                  i32.const 2
                  i32.eq
                  br_if 0 (;@7;)
                  local.get 10
                  i32.load offset=8
                  local.tee 10
                  i32.const -1
                  i32.xor
                  i32.const 7
                  i32.shr_u
                  local.get 10
                  i32.const 6
                  i32.shr_u
                  i32.or
                  i32.const 16843009
                  i32.and
                  local.get 5
                  i32.add
                  local.set 5
                end
                local.get 5
                i32.const 8
                i32.shr_u
                i32.const 459007
                i32.and
                local.get 5
                i32.const 16711935
                i32.and
                i32.add
                i32.const 65537
                i32.mul
                i32.const 16
                i32.shr_u
                local.get 9
                i32.add
                local.set 9
                br 3 (;@3;)
              end
              block  ;; label = @6
                local.get 2
                br_if 0 (;@6;)
                i32.const 0
                local.set 2
                i32.const 0
                local.set 9
                br 3 (;@3;)
              end
              local.get 2
              i32.const 3
              i32.and
              local.set 12
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  i32.const 4
                  i32.ge_u
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 9
                  i32.const 0
                  local.set 10
                  br 1 (;@6;)
                end
                local.get 2
                i32.const 12
                i32.and
                local.set 4
                i32.const 0
                local.set 9
                i32.const 0
                local.set 10
                loop  ;; label = @7
                  local.get 9
                  local.get 1
                  local.get 10
                  i32.add
                  local.tee 5
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.get 5
                  i32.const 1
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.get 5
                  i32.const 2
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.get 5
                  i32.const 3
                  i32.add
                  i32.load8_s
                  i32.const -65
                  i32.gt_s
                  i32.add
                  local.set 9
                  local.get 4
                  local.get 10
                  i32.const 4
                  i32.add
                  local.tee 10
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 12
              i32.eqz
              br_if 2 (;@3;)
              local.get 1
              local.get 10
              i32.add
              local.set 5
              loop  ;; label = @6
                local.get 9
                local.get 5
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.set 9
                local.get 5
                i32.const 1
                i32.add
                local.set 5
                local.get 12
                i32.const -1
                i32.add
                local.tee 12
                br_if 0 (;@6;)
                br 3 (;@3;)
              end
            end
            local.get 1
            local.get 2
            i32.add
            local.set 6
            i32.const 0
            local.set 2
            i32.const 0
            local.set 12
            local.get 1
            local.set 10
            block  ;; label = @5
              loop  ;; label = @6
                local.get 10
                local.tee 5
                local.get 6
                i32.eq
                br_if 1 (;@5;)
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 5
                    i32.load8_s
                    local.tee 10
                    i32.const -1
                    i32.le_s
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 1
                    i32.add
                    local.set 10
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 10
                    i32.const -32
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 2
                    i32.add
                    local.set 10
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 10
                    i32.const -16
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 5
                    i32.const 3
                    i32.add
                    local.set 10
                    br 1 (;@7;)
                  end
                  local.get 5
                  i32.const 4
                  i32.add
                  local.set 10
                end
                local.get 10
                local.get 5
                i32.sub
                local.get 2
                i32.add
                local.set 2
                local.get 4
                local.get 12
                i32.const 1
                i32.add
                local.tee 12
                i32.ne
                br_if 0 (;@6;)
              end
              i32.const 0
              local.set 5
              br 1 (;@4;)
            end
            local.get 4
            local.get 12
            i32.sub
            local.set 5
          end
          local.get 4
          local.get 5
          i32.sub
          local.set 9
        end
        local.get 9
        local.get 0
        i32.load16_u offset=12
        local.tee 5
        i32.ge_u
        br_if 0 (;@2;)
        local.get 5
        local.get 9
        i32.sub
        local.set 8
        i32.const 0
        local.set 5
        i32.const 0
        local.set 9
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 3
              i32.const 29
              i32.shr_u
              i32.const 3
              i32.and
              br_table 2 (;@3;) 0 (;@5;) 1 (;@4;) 2 (;@3;) 2 (;@3;)
            end
            local.get 8
            local.set 9
            br 1 (;@3;)
          end
          local.get 8
          i32.const 65534
          i32.and
          i32.const 1
          i32.shr_u
          local.set 9
        end
        local.get 3
        i32.const 2097151
        i32.and
        local.set 6
        local.get 0
        i32.load offset=4
        local.set 12
        local.get 0
        i32.load
        local.set 4
        block  ;; label = @3
          loop  ;; label = @4
            local.get 5
            i32.const 65535
            i32.and
            local.get 9
            i32.const 65535
            i32.and
            i32.ge_u
            br_if 1 (;@3;)
            i32.const 1
            local.set 10
            local.get 5
            i32.const 1
            i32.add
            local.set 5
            local.get 4
            local.get 6
            local.get 12
            i32.load offset=16
            call_indirect (type 0)
            br_if 3 (;@1;)
            br 0 (;@4;)
          end
        end
        i32.const 1
        local.set 10
        local.get 4
        local.get 1
        local.get 2
        local.get 12
        i32.load offset=12
        call_indirect (type 2)
        br_if 1 (;@1;)
        local.get 8
        local.get 9
        i32.sub
        i32.const 65535
        i32.and
        local.set 9
        i32.const 0
        local.set 5
        loop  ;; label = @3
          block  ;; label = @4
            local.get 5
            i32.const 65535
            i32.and
            local.get 9
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 0
            return
          end
          i32.const 1
          local.set 10
          local.get 5
          i32.const 1
          i32.add
          local.set 5
          local.get 4
          local.get 6
          local.get 12
          i32.load offset=16
          call_indirect (type 0)
          br_if 2 (;@1;)
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.load
      local.get 1
      local.get 2
      local.get 0
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 2)
      local.set 10
    end
    local.get 10)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h44818328333068deE (type 0) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17h5a5f539bbb272398E)
  (func $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb7cc4525d713b4b9E (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 0))
  (func $_ZN4core6option13unwrap_failed17h0450242c3e36021bE (type 10) (param i32)
    i32.const 1049785
    i32.const 43
    local.get 0
    call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
    unreachable)
  (func $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h915418dd4db6343bE (type 2) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    i32.const -1
    i32.add
    local.set 3
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    i32.load
    local.set 5
    local.get 0
    i32.load offset=8
    local.set 6
    i32.const 0
    local.set 7
    i32.const 0
    local.set 8
    i32.const 0
    local.set 9
    i32.const 0
    local.set 10
    block  ;; label = @1
      loop  ;; label = @2
        local.get 10
        i32.const 1
        i32.and
        br_if 1 (;@1;)
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            local.get 9
            i32.lt_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 1
              local.get 9
              i32.add
              local.set 10
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 2
                      local.get 9
                      i32.sub
                      local.tee 11
                      i32.const 7
                      i32.gt_u
                      br_if 0 (;@9;)
                      local.get 2
                      local.get 9
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 2
                      local.set 9
                      br 5 (;@4;)
                    end
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 10
                        i32.const 3
                        i32.add
                        i32.const -4
                        i32.and
                        local.tee 12
                        local.get 10
                        i32.sub
                        local.tee 13
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 0
                        local.set 0
                        loop  ;; label = @11
                          local.get 10
                          local.get 0
                          i32.add
                          i32.load8_u
                          i32.const 10
                          i32.eq
                          br_if 5 (;@6;)
                          local.get 13
                          local.get 0
                          i32.const 1
                          i32.add
                          local.tee 0
                          i32.ne
                          br_if 0 (;@11;)
                        end
                        local.get 13
                        local.get 11
                        i32.const -8
                        i32.add
                        local.tee 14
                        i32.le_u
                        br_if 1 (;@9;)
                        br 3 (;@7;)
                      end
                      local.get 11
                      i32.const -8
                      i32.add
                      local.set 14
                    end
                    loop  ;; label = @9
                      i32.const 16843008
                      local.get 12
                      i32.load
                      local.tee 0
                      i32.const 168430090
                      i32.xor
                      i32.sub
                      local.get 0
                      i32.or
                      i32.const 16843008
                      local.get 12
                      i32.const 4
                      i32.add
                      i32.load
                      local.tee 0
                      i32.const 168430090
                      i32.xor
                      i32.sub
                      local.get 0
                      i32.or
                      i32.and
                      i32.const -2139062144
                      i32.and
                      i32.const -2139062144
                      i32.ne
                      br_if 2 (;@7;)
                      local.get 12
                      i32.const 8
                      i32.add
                      local.set 12
                      local.get 13
                      i32.const 8
                      i32.add
                      local.tee 13
                      local.get 14
                      i32.le_u
                      br_if 0 (;@9;)
                      br 2 (;@7;)
                    end
                  end
                  i32.const 0
                  local.set 0
                  loop  ;; label = @8
                    local.get 10
                    local.get 0
                    i32.add
                    i32.load8_u
                    i32.const 10
                    i32.eq
                    br_if 2 (;@6;)
                    local.get 11
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 2
                  local.set 9
                  br 3 (;@4;)
                end
                block  ;; label = @7
                  local.get 11
                  local.get 13
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 2
                  local.set 9
                  br 3 (;@4;)
                end
                local.get 10
                local.get 13
                i32.add
                local.set 12
                local.get 2
                local.get 13
                i32.sub
                local.get 9
                i32.sub
                local.set 11
                i32.const 0
                local.set 0
                block  ;; label = @7
                  loop  ;; label = @8
                    local.get 12
                    local.get 0
                    i32.add
                    i32.load8_u
                    i32.const 10
                    i32.eq
                    br_if 1 (;@7;)
                    local.get 11
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 2
                  local.set 9
                  br 3 (;@4;)
                end
                local.get 0
                local.get 13
                i32.add
                local.set 0
              end
              local.get 0
              local.get 9
              i32.add
              local.tee 12
              i32.const 1
              i32.add
              local.set 9
              block  ;; label = @6
                local.get 12
                local.get 2
                i32.ge_u
                br_if 0 (;@6;)
                local.get 10
                local.get 0
                i32.add
                i32.load8_u
                i32.const 10
                i32.ne
                br_if 0 (;@6;)
                i32.const 0
                local.set 10
                local.get 9
                local.set 13
                local.get 9
                local.set 0
                br 3 (;@3;)
              end
              local.get 9
              local.get 2
              i32.le_u
              br_if 0 (;@5;)
            end
          end
          local.get 2
          local.get 8
          i32.eq
          br_if 2 (;@1;)
          i32.const 1
          local.set 10
          local.get 8
          local.set 13
          local.get 2
          local.set 0
        end
        block  ;; label = @3
          block  ;; label = @4
            local.get 6
            i32.load8_u
            i32.eqz
            br_if 0 (;@4;)
            local.get 5
            i32.const 1049872
            i32.const 4
            local.get 4
            i32.load offset=12
            call_indirect (type 2)
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 8
          i32.sub
          local.set 11
          i32.const 0
          local.set 12
          block  ;; label = @4
            local.get 0
            local.get 8
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            local.get 0
            i32.add
            i32.load8_u
            i32.const 10
            i32.eq
            local.set 12
          end
          local.get 1
          local.get 8
          i32.add
          local.set 0
          local.get 6
          local.get 12
          i32.store8
          local.get 13
          local.set 8
          local.get 5
          local.get 0
          local.get 11
          local.get 4
          i32.load offset=12
          call_indirect (type 2)
          i32.eqz
          br_if 1 (;@2;)
        end
      end
      i32.const 1
      local.set 7
    end
    local.get 7)
  (func $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17h201a3da0f3901d61E (type 0) (param i32 i32) (result i32)
    (local i32 i32)
    local.get 0
    i32.load offset=4
    local.set 2
    local.get 0
    i32.load
    local.set 3
    block  ;; label = @1
      local.get 0
      i32.load offset=8
      local.tee 0
      i32.load8_u
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 1049872
      i32.const 4
      local.get 2
      i32.load offset=12
      call_indirect (type 2)
      i32.eqz
      br_if 0 (;@1;)
      i32.const 1
      return
    end
    local.get 0
    local.get 1
    i32.const 10
    i32.eq
    i32.store8
    local.get 3
    local.get 1
    local.get 2
    i32.load offset=16
    call_indirect (type 0))
  (func $_ZN4core3fmt5Write9write_fmt17h5fc1c2cab027a787E (type 0) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      br_table 0 (;@1;) 0 (;@1;) 0 (;@1;)
    end
    local.get 0
    i32.const 1049848
    local.get 1
    call $_ZN4core3fmt5write17h68542eb4423e8992E)
  (func $_ZN4libm4math6scalbn6scalbn17h125b41e1276c1e66E (type 13) (param f64 i32) (result f64)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 1023
            i32.gt_s
            br_if 0 (;@4;)
            local.get 1
            i32.const -1022
            i32.ge_s
            br_if 3 (;@1;)
            local.get 0
            f64.const 0x1p-969 (;=2.00417e-292;)
            f64.mul
            local.set 0
            local.get 1
            i32.const -1992
            i32.le_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 969
            i32.add
            local.set 1
            br 3 (;@1;)
          end
          local.get 0
          f64.const 0x1p+1023 (;=8.98847e+307;)
          f64.mul
          local.set 0
          local.get 1
          i32.const 2046
          i32.gt_u
          br_if 1 (;@2;)
          local.get 1
          i32.const -1023
          i32.add
          local.set 1
          br 2 (;@1;)
        end
        local.get 0
        f64.const 0x1p-969 (;=2.00417e-292;)
        f64.mul
        local.set 0
        local.get 1
        i32.const -2960
        local.get 1
        i32.const -2960
        i32.gt_u
        select
        i32.const 1938
        i32.add
        local.set 1
        br 1 (;@1;)
      end
      local.get 0
      f64.const 0x1p+1023 (;=8.98847e+307;)
      f64.mul
      local.set 0
      local.get 1
      i32.const 3069
      local.get 1
      i32.const 3069
      i32.lt_u
      select
      i32.const -2046
      i32.add
      local.set 1
    end
    local.get 0
    local.get 1
    i32.const 1023
    i32.add
    i64.extend_i32_u
    i64.const 52
    i64.shl
    f64.reinterpret_i64
    f64.mul)
  (func $_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$7enabled17ha09e9db710a2210aE (type 0) (param i32 i32) (result i32)
    i32.const 0)
  (func $_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$3log17h125098c1327886c1E (type 1) (param i32 i32))
  (func $_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$5flush17hc2d27a3732ee412fE (type 10) (param i32))
  (func $_ZN55_$LT$metra..logger..MetraLogger$u20$as$u20$log..Log$GT$3log17ha8ad039e157b7254E (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 1
    i32.store offset=52
    local.get 2
    i32.const 1050868
    i32.store offset=48
    local.get 2
    i64.const 1
    i64.store offset=60 align=4
    local.get 2
    local.get 1
    i32.const 44
    i32.add
    i32.store offset=124
    local.get 2
    i32.const 7
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 2
    i32.const 124
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 2
    local.get 2
    i32.const 24
    i32.add
    i32.store offset=56
    local.get 2
    local.get 2
    i32.const 48
    i32.add
    call $_ZN5alloc3fmt6format12format_inner17hd51360b5065df943E
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                local.get 1
                                i32.load offset=20
                                i32.const 2
                                i32.ne
                                br_if 0 (;@14;)
                                local.get 1
                                i32.load offset=4
                                local.set 3
                                local.get 1
                                i32.load
                                local.set 4
                                local.get 2
                                i32.const 0
                                i32.store offset=84
                                local.get 2
                                i64.const 4294967296
                                i64.store offset=76 align=4
                                local.get 2
                                i64.const 1
                                i64.store offset=88 align=4
                                local.get 2
                                i32.const 88
                                i32.add
                                local.set 5
                                local.get 2
                                i32.const 76
                                i32.add
                                local.set 6
                                local.get 4
                                i32.const 1
                                i32.ne
                                br_if 1 (;@13;)
                                br 3 (;@11;)
                              end
                              block  ;; label = @14
                                block  ;; label = @15
                                  local.get 1
                                  i64.load offset=24 align=4
                                  local.tee 7
                                  i64.const -1
                                  i64.le_s
                                  br_if 0 (;@15;)
                                  local.get 7
                                  i64.const 32
                                  i64.shr_u
                                  i32.wrap_i64
                                  local.set 5
                                  local.get 1
                                  i32.load offset=4
                                  local.set 3
                                  local.get 1
                                  i32.load
                                  local.set 4
                                  i32.const 1
                                  local.set 6
                                  local.get 7
                                  i64.const 4294967296
                                  i64.lt_u
                                  br_if 1 (;@14;)
                                  i32.const 0
                                  i32.load8_u offset=1051120
                                  drop
                                  local.get 5
                                  call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17hf076c5f6615165afE
                                  local.tee 6
                                  br_if 1 (;@14;)
                                  local.get 5
                                  call $_ZN5alloc5alloc18handle_alloc_error17h538ce9133f14f3ccE
                                  unreachable
                                end
                                i32.const 1050628
                                call $_ZN5alloc7raw_vec17capacity_overflow17hfc61731a92216a2cE
                                unreachable
                              end
                              block  ;; label = @14
                                local.get 5
                                i32.eqz
                                br_if 0 (;@14;)
                                local.get 6
                                local.get 7
                                i32.wrap_i64
                                local.get 5
                                memory.copy
                              end
                              local.get 2
                              local.get 5
                              i32.store offset=84
                              local.get 2
                              local.get 6
                              i32.store offset=80
                              local.get 2
                              local.get 5
                              i32.store offset=76
                              local.get 4
                              br_if 1 (;@12;)
                              local.get 2
                              i64.const 1
                              i64.store offset=88 align=4
                              local.get 2
                              i32.const 76
                              i32.add
                              local.set 6
                              local.get 2
                              i32.const 88
                              i32.add
                              local.set 5
                            end
                            local.get 2
                            i32.const 0
                            i32.store offset=104
                            local.get 2
                            i64.const 4294967296
                            i64.store offset=96 align=4
                            br 2 (;@10;)
                          end
                          local.get 2
                          i32.const 1
                          i32.store offset=92
                          local.get 2
                          i32.const 1050488
                          i32.store offset=88
                          local.get 2
                          i32.const 76
                          i32.add
                          local.set 6
                          local.get 2
                          i32.const 88
                          i32.add
                          local.set 5
                        end
                        local.get 2
                        local.get 3
                        i32.store offset=108
                        local.get 2
                        i32.const 0
                        i32.store offset=120
                        local.get 2
                        i64.const 4294967296
                        i64.store offset=112 align=4
                        local.get 2
                        i32.const 1050112
                        i32.store offset=128
                        local.get 2
                        i64.const 3758096416
                        i64.store offset=132 align=4
                        local.get 2
                        local.get 2
                        i32.const 112
                        i32.add
                        i32.store offset=124
                        local.get 2
                        i32.const 108
                        i32.add
                        local.get 2
                        i32.const 124
                        i32.add
                        call $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h10d43ed3b5ffe62fE
                        br_if 1 (;@9;)
                        local.get 2
                        i32.const 96
                        i32.add
                        i32.const 8
                        i32.add
                        local.get 2
                        i32.const 112
                        i32.add
                        i32.const 8
                        i32.add
                        i32.load
                        i32.store
                        local.get 2
                        local.get 2
                        i64.load offset=112 align=4
                        i64.store offset=96
                      end
                      local.get 2
                      i32.const 3
                      i32.store offset=28
                      local.get 2
                      i32.const 1050876
                      i32.store offset=24
                      local.get 2
                      i64.const 3
                      i64.store offset=36 align=4
                      local.get 2
                      i32.const 8
                      i64.extend_i32_u
                      i64.const 32
                      i64.shl
                      local.tee 7
                      local.get 2
                      i32.const 96
                      i32.add
                      i64.extend_i32_u
                      i64.or
                      i64.store offset=64
                      local.get 2
                      i32.const 9
                      i64.extend_i32_u
                      i64.const 32
                      i64.shl
                      local.get 5
                      i64.extend_i32_u
                      i64.or
                      i64.store offset=56
                      local.get 2
                      local.get 7
                      local.get 6
                      i64.extend_i32_u
                      i64.or
                      i64.store offset=48
                      local.get 2
                      local.get 2
                      i32.const 48
                      i32.add
                      i32.store offset=32
                      local.get 2
                      i32.const 12
                      i32.add
                      local.get 2
                      i32.const 24
                      i32.add
                      call $_ZN5alloc3fmt6format12format_inner17hd51360b5065df943E
                      block  ;; label = @10
                        local.get 2
                        i32.load offset=96
                        local.tee 5
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 2
                        i32.load offset=100
                        local.tee 3
                        i32.const -4
                        i32.add
                        i32.load
                        local.tee 6
                        i32.const -8
                        i32.and
                        local.tee 4
                        i32.const 4
                        i32.const 8
                        local.get 6
                        i32.const 3
                        i32.and
                        local.tee 6
                        select
                        local.get 5
                        i32.add
                        i32.lt_u
                        br_if 2 (;@8;)
                        block  ;; label = @11
                          local.get 6
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 4
                          local.get 5
                          i32.const 39
                          i32.add
                          i32.gt_u
                          br_if 4 (;@7;)
                        end
                        local.get 3
                        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h8ebfbf97344dd34dE
                      end
                      block  ;; label = @10
                        local.get 2
                        i32.load offset=76
                        local.tee 5
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 2
                        i32.load offset=80
                        local.tee 3
                        i32.const -4
                        i32.add
                        i32.load
                        local.tee 6
                        i32.const -8
                        i32.and
                        local.tee 4
                        i32.const 4
                        i32.const 8
                        local.get 6
                        i32.const 3
                        i32.and
                        local.tee 6
                        select
                        local.get 5
                        i32.add
                        i32.lt_u
                        br_if 4 (;@6;)
                        block  ;; label = @11
                          local.get 6
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 4
                          local.get 5
                          i32.const 39
                          i32.add
                          i32.gt_u
                          br_if 6 (;@5;)
                        end
                        local.get 3
                        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h8ebfbf97344dd34dE
                      end
                      local.get 1
                      i32.load offset=32
                      local.get 1
                      i32.load offset=36
                      local.get 1
                      i32.load offset=40
                      local.get 2
                      i32.load offset=16
                      local.tee 5
                      local.get 2
                      i32.load offset=20
                      local.get 2
                      i32.load offset=4
                      local.tee 1
                      local.get 2
                      i32.load offset=8
                      call $_ZN5metra3sys3log17h3d0286cba4cdea4eE
                      block  ;; label = @10
                        local.get 2
                        i32.load
                        local.tee 6
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 1
                        i32.const -4
                        i32.add
                        i32.load
                        local.tee 3
                        i32.const -8
                        i32.and
                        local.tee 4
                        i32.const 4
                        i32.const 8
                        local.get 3
                        i32.const 3
                        i32.and
                        local.tee 3
                        select
                        local.get 6
                        i32.add
                        i32.lt_u
                        br_if 6 (;@4;)
                        block  ;; label = @11
                          local.get 3
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 4
                          local.get 6
                          i32.const 39
                          i32.add
                          i32.gt_u
                          br_if 8 (;@3;)
                        end
                        local.get 1
                        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h8ebfbf97344dd34dE
                      end
                      block  ;; label = @10
                        local.get 2
                        i32.load offset=12
                        local.tee 1
                        i32.eqz
                        br_if 0 (;@10;)
                        local.get 5
                        i32.const -4
                        i32.add
                        i32.load
                        local.tee 6
                        i32.const -8
                        i32.and
                        local.tee 3
                        i32.const 4
                        i32.const 8
                        local.get 6
                        i32.const 3
                        i32.and
                        local.tee 6
                        select
                        local.get 1
                        i32.add
                        i32.lt_u
                        br_if 8 (;@2;)
                        block  ;; label = @11
                          local.get 6
                          i32.eqz
                          br_if 0 (;@11;)
                          local.get 3
                          local.get 1
                          i32.const 39
                          i32.add
                          i32.gt_u
                          br_if 10 (;@1;)
                        end
                        local.get 5
                        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h8ebfbf97344dd34dE
                      end
                      local.get 2
                      i32.const 144
                      i32.add
                      global.set $__stack_pointer
                      return
                    end
                    i32.const 1050152
                    i32.const 55
                    local.get 2
                    i32.const 143
                    i32.add
                    i32.const 1050136
                    i32.const 1050320
                    call $_ZN4core6result13unwrap_failed17h4e312bd8e5eb4431E
                    unreachable
                  end
                  i32.const 1050740
                  i32.const 46
                  i32.const 1050788
                  call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
                  unreachable
                end
                i32.const 1050804
                i32.const 46
                i32.const 1050852
                call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
                unreachable
              end
              i32.const 1050740
              i32.const 46
              i32.const 1050788
              call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
              unreachable
            end
            i32.const 1050804
            i32.const 46
            i32.const 1050852
            call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
            unreachable
          end
          i32.const 1050740
          i32.const 46
          i32.const 1050788
          call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
          unreachable
        end
        i32.const 1050804
        i32.const 46
        i32.const 1050852
        call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
        unreachable
      end
      i32.const 1050740
      i32.const 46
      i32.const 1050788
      call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
      unreachable
    end
    i32.const 1050804
    i32.const 46
    i32.const 1050852
    call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
    unreachable)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h599cbe640025bd16E (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 0
    i32.load
    call $_ZN4core3fmt5write17h68542eb4423e8992E)
  (func $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h5caab1d2e7c2bad5E (type 0) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load offset=4
    local.get 0
    i32.load offset=8
    call $_ZN4core3fmt9Formatter3pad17h5a5f539bbb272398E)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbd4b9d8977f1a047E (type 0) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN4core3fmt9Formatter3pad17h5a5f539bbb272398E)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$18insert_large_chunk17h37918539f353b168E (type 1) (param i32 i32)
    (local i32 i32 i32 i32)
    i32.const 31
    local.set 2
    block  ;; label = @1
      local.get 1
      i32.const 16777215
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 6
      local.get 1
      i32.const 8
      i32.shr_u
      i32.clz
      local.tee 2
      i32.sub
      i32.shr_u
      i32.const 1
      i32.and
      local.get 2
      i32.const 1
      i32.shl
      i32.sub
      i32.const 62
      i32.add
      local.set 2
    end
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 0
    local.get 2
    i32.store offset=28
    local.get 2
    i32.const 2
    i32.shl
    i32.const 1051124
    i32.add
    local.set 3
    block  ;; label = @1
      i32.const 0
      i32.load offset=1051536
      i32.const 1
      local.get 2
      i32.shl
      local.tee 4
      i32.and
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.store
      local.get 0
      local.get 3
      i32.store offset=24
      local.get 0
      local.get 0
      i32.store offset=12
      local.get 0
      local.get 0
      i32.store offset=8
      i32.const 0
      i32.const 0
      i32.load offset=1051536
      local.get 4
      i32.or
      i32.store offset=1051536
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.load
          local.tee 4
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.ne
          br_if 0 (;@3;)
          local.get 4
          local.set 2
          br 1 (;@2;)
        end
        local.get 1
        i32.const 0
        i32.const 25
        local.get 2
        i32.const 1
        i32.shr_u
        i32.sub
        local.get 2
        i32.const 31
        i32.eq
        select
        i32.shl
        local.set 3
        loop  ;; label = @3
          local.get 4
          local.get 3
          i32.const 29
          i32.shr_u
          i32.const 4
          i32.and
          i32.add
          local.tee 5
          i32.load offset=16
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
          local.get 3
          i32.const 1
          i32.shl
          local.set 3
          local.get 2
          local.set 4
          local.get 2
          i32.load offset=4
          i32.const -8
          i32.and
          local.get 1
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.load offset=8
      local.tee 3
      local.get 0
      i32.store offset=12
      local.get 2
      local.get 0
      i32.store offset=8
      local.get 0
      i32.const 0
      i32.store offset=24
      local.get 0
      local.get 2
      i32.store offset=12
      local.get 0
      local.get 3
      i32.store offset=8
      return
    end
    local.get 5
    i32.const 16
    i32.add
    local.get 0
    i32.store
    local.get 0
    local.get 4
    i32.store offset=24
    local.get 0
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 0
    i32.store offset=8)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$12unlink_chunk17hf2bd2fd6dcf32145E (type 1) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    i32.load offset=12
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 256
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            i32.load offset=24
            local.set 3
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 2
                  local.get 0
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 0
                  i32.const 20
                  i32.const 16
                  local.get 0
                  i32.load offset=20
                  local.tee 2
                  select
                  i32.add
                  i32.load
                  local.tee 1
                  br_if 1 (;@6;)
                  i32.const 0
                  local.set 2
                  br 2 (;@5;)
                end
                local.get 0
                i32.load offset=8
                local.tee 1
                local.get 2
                i32.store offset=12
                local.get 2
                local.get 1
                i32.store offset=8
                br 1 (;@5;)
              end
              local.get 0
              i32.const 20
              i32.add
              local.get 0
              i32.const 16
              i32.add
              local.get 2
              select
              local.set 4
              loop  ;; label = @6
                local.get 4
                local.set 5
                local.get 1
                local.tee 2
                i32.const 20
                i32.add
                local.get 2
                i32.const 16
                i32.add
                local.get 2
                i32.load offset=20
                local.tee 1
                select
                local.set 4
                local.get 2
                i32.const 20
                i32.const 16
                local.get 1
                select
                i32.add
                i32.load
                local.tee 1
                br_if 0 (;@6;)
              end
              local.get 5
              i32.const 0
              i32.store
            end
            local.get 3
            i32.eqz
            br_if 2 (;@2;)
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                local.get 0
                i32.load offset=28
                i32.const 2
                i32.shl
                i32.const 1051124
                i32.add
                local.tee 1
                i32.load
                i32.eq
                br_if 0 (;@6;)
                local.get 3
                i32.load offset=16
                local.get 0
                i32.eq
                br_if 1 (;@5;)
                local.get 3
                local.get 2
                i32.store offset=20
                local.get 2
                br_if 3 (;@3;)
                br 4 (;@2;)
              end
              local.get 1
              local.get 2
              i32.store
              local.get 2
              i32.eqz
              br_if 4 (;@1;)
              br 2 (;@3;)
            end
            local.get 3
            local.get 2
            i32.store offset=16
            local.get 2
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          block  ;; label = @4
            local.get 2
            local.get 0
            i32.load offset=8
            local.tee 4
            i32.eq
            br_if 0 (;@4;)
            local.get 4
            local.get 2
            i32.store offset=12
            local.get 2
            local.get 4
            i32.store offset=8
            return
          end
          i32.const 0
          i32.const 0
          i32.load offset=1051532
          i32.const -2
          local.get 1
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store offset=1051532
          return
        end
        local.get 2
        local.get 3
        i32.store offset=24
        block  ;; label = @3
          local.get 0
          i32.load offset=16
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 1
          i32.store offset=16
          local.get 1
          local.get 2
          i32.store offset=24
        end
        local.get 0
        i32.load offset=20
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        local.get 1
        i32.store offset=20
        local.get 1
        local.get 2
        i32.store offset=24
        return
      end
      return
    end
    i32.const 0
    i32.const 0
    i32.load offset=1051536
    i32.const -2
    local.get 0
    i32.load offset=28
    i32.rotl
    i32.and
    i32.store offset=1051536)
  (func $_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7b15f6ce7cdec3bcE.105 (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.load
    i32.const 1050336
    i32.const 5
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 2))
  (func $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3a8e9555fe7a58aaE (type 10) (param i32)
    (local i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.load
          local.tee 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.load offset=4
          local.tee 2
          i32.const -4
          i32.add
          i32.load
          local.tee 0
          i32.const -8
          i32.and
          local.tee 3
          i32.const 4
          i32.const 8
          local.get 0
          i32.const 3
          i32.and
          local.tee 0
          select
          local.get 1
          i32.add
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 0
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            i32.const 39
            i32.add
            i32.gt_u
            br_if 3 (;@1;)
          end
          local.get 2
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h8ebfbf97344dd34dE
        end
        return
      end
      i32.const 1050740
      i32.const 46
      i32.const 1050788
      call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
      unreachable
    end
    i32.const 1050804
    i32.const 46
    i32.const 1050852
    call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
    unreachable)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h7850057311a0cef1E.106 (type 2) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      local.get 0
      i32.load
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 3
      local.get 2
      call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h90ca620f30f512ddE
      local.get 0
      i32.load offset=8
      local.set 3
    end
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 1
      local.get 2
      memory.copy
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h90ca620f30f512ddE (type 11) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          local.get 2
          i32.add
          local.tee 2
          local.get 1
          i32.ge_u
          br_if 0 (;@3;)
          i32.const 0
          local.set 4
          br 1 (;@2;)
        end
        i32.const 0
        local.set 4
        block  ;; label = @3
          local.get 2
          local.get 0
          i32.load
          local.tee 5
          i32.const 1
          i32.shl
          local.tee 1
          local.get 2
          local.get 1
          i32.gt_u
          select
          local.tee 1
          i32.const 8
          local.get 1
          i32.const 8
          i32.gt_u
          select
          local.tee 1
          i32.const 0
          i32.ge_s
          br_if 0 (;@3;)
          br 1 (;@2;)
        end
        i32.const 0
        local.set 2
        block  ;; label = @3
          local.get 5
          i32.eqz
          br_if 0 (;@3;)
          local.get 3
          local.get 5
          i32.store offset=28
          local.get 3
          local.get 0
          i32.load offset=4
          i32.store offset=20
          i32.const 1
          local.set 2
        end
        local.get 3
        local.get 2
        i32.store offset=24
        local.get 3
        i32.const 8
        i32.add
        local.get 1
        local.get 3
        i32.const 20
        i32.add
        call $_ZN5alloc7raw_vec11finish_grow17h7ad3c3bc591ad788E
        local.get 3
        i32.load offset=8
        i32.const 1
        i32.ne
        br_if 1 (;@1;)
        local.get 3
        i32.load offset=16
        local.set 0
        local.get 3
        i32.load offset=12
        local.set 4
      end
      local.get 4
      local.get 0
      i32.const 1050472
      call $_ZN5alloc7raw_vec12handle_error17h57ad9ee517c44fc6E
      unreachable
    end
    local.get 3
    i32.load offset=12
    local.set 2
    local.get 0
    local.get 1
    i32.store
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h61f319b0423b9825E.107 (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.load offset=8
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 128
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 1
        local.set 3
        br 1 (;@1;)
      end
      block  ;; label = @2
        local.get 1
        i32.const 2048
        i32.ge_u
        br_if 0 (;@2;)
        i32.const 2
        local.set 3
        br 1 (;@1;)
      end
      i32.const 3
      i32.const 4
      local.get 1
      i32.const 65536
      i32.lt_u
      select
      local.set 3
    end
    local.get 2
    local.set 4
    block  ;; label = @1
      local.get 3
      local.get 0
      i32.load
      local.get 2
      i32.sub
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 3
      call $_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h90ca620f30f512ddE
      local.get 0
      i32.load offset=8
      local.set 4
    end
    local.get 0
    i32.load offset=4
    local.get 4
    i32.add
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 128
          i32.lt_u
          br_if 0 (;@3;)
          local.get 1
          i32.const 2048
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 1
            i32.const 65536
            i32.lt_u
            br_if 0 (;@4;)
            local.get 4
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=3
            local.get 4
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8
            local.get 4
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 4
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            br 3 (;@1;)
          end
          local.get 4
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=2
          local.get 4
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 224
          i32.or
          i32.store8
          local.get 4
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=1
          br 2 (;@1;)
        end
        local.get 4
        local.get 1
        i32.store8
        br 1 (;@1;)
      end
      local.get 4
      local.get 1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=1
      local.get 4
      local.get 1
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      i32.store8
    end
    local.get 0
    local.get 3
    local.get 2
    i32.add
    i32.store offset=8
    i32.const 0)
  (func $_ZN4core3fmt5Write9write_fmt17hbee122a876abeac2E (type 0) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 1
      i32.load offset=4
      br_table 0 (;@1;) 0 (;@1;) 0 (;@1;)
    end
    local.get 0
    i32.const 1050112
    local.get 1
    call $_ZN4core3fmt5write17h68542eb4423e8992E)
  (func $_ZN5alloc7raw_vec11finish_grow17h7ad3c3bc591ad788E (type 11) (param i32 i32 i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load offset=4
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 2
            i32.load offset=8
            local.tee 3
            br_if 0 (;@4;)
            i32.const 0
            i32.load8_u offset=1051120
            drop
            br 2 (;@2;)
          end
          local.get 2
          i32.load
          local.get 3
          local.get 1
          call $_RNvCs691rhTbG0Ee_7___rustc14___rust_realloc
          local.set 2
          br 2 (;@1;)
        end
        i32.const 0
        i32.load8_u offset=1051120
        drop
      end
      local.get 1
      call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17hf076c5f6615165afE
      local.set 2
    end
    local.get 0
    local.get 1
    i32.store offset=8
    local.get 0
    local.get 2
    i32.const 1
    local.get 2
    select
    i32.store offset=4
    local.get 0
    local.get 2
    i32.eqz
    i32.store)
  (func $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$13dispose_chunk17h1cc90da7f6233a6dE (type 1) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=4
        local.tee 3
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 3
        i32.const 2
        i32.and
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          local.get 0
          local.get 3
          i32.sub
          local.tee 0
          i32.const 0
          i32.load offset=1051548
          i32.ne
          br_if 0 (;@3;)
          local.get 2
          i32.load offset=4
          i32.const 3
          i32.and
          i32.const 3
          i32.ne
          br_if 1 (;@2;)
          i32.const 0
          local.get 1
          i32.store offset=1051540
          local.get 2
          local.get 2
          i32.load offset=4
          i32.const -2
          i32.and
          i32.store offset=4
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 2
          local.get 1
          i32.store
          br 2 (;@1;)
        end
        local.get 0
        local.get 3
        call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$12unlink_chunk17hf2bd2fd6dcf32145E
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 2
              i32.load offset=4
              local.tee 3
              i32.const 2
              i32.and
              br_if 0 (;@5;)
              local.get 2
              i32.const 0
              i32.load offset=1051552
              i32.eq
              br_if 2 (;@3;)
              local.get 2
              i32.const 0
              i32.load offset=1051548
              i32.eq
              br_if 3 (;@2;)
              local.get 2
              local.get 3
              i32.const -8
              i32.and
              local.tee 3
              call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$12unlink_chunk17hf2bd2fd6dcf32145E
              local.get 0
              local.get 3
              local.get 1
              i32.add
              local.tee 1
              i32.const 1
              i32.or
              i32.store offset=4
              local.get 0
              local.get 1
              i32.add
              local.get 1
              i32.store
              local.get 0
              i32.const 0
              i32.load offset=1051548
              i32.ne
              br_if 1 (;@4;)
              i32.const 0
              local.get 1
              i32.store offset=1051540
              return
            end
            local.get 2
            local.get 3
            i32.const -2
            i32.and
            i32.store offset=4
            local.get 0
            local.get 1
            i32.const 1
            i32.or
            i32.store offset=4
            local.get 0
            local.get 1
            i32.add
            local.get 1
            i32.store
          end
          block  ;; label = @4
            local.get 1
            i32.const 256
            i32.lt_u
            br_if 0 (;@4;)
            i32.const 31
            local.set 2
            block  ;; label = @5
              local.get 1
              i32.const 16777215
              i32.gt_u
              br_if 0 (;@5;)
              local.get 1
              i32.const 6
              local.get 1
              i32.const 8
              i32.shr_u
              i32.clz
              local.tee 2
              i32.sub
              i32.shr_u
              i32.const 1
              i32.and
              local.get 2
              i32.const 1
              i32.shl
              i32.sub
              i32.const 62
              i32.add
              local.set 2
            end
            local.get 0
            i64.const 0
            i64.store offset=16 align=4
            local.get 0
            local.get 2
            i32.store offset=28
            local.get 2
            i32.const 2
            i32.shl
            i32.const 1051124
            i32.add
            local.set 3
            block  ;; label = @5
              i32.const 0
              i32.load offset=1051536
              i32.const 1
              local.get 2
              i32.shl
              local.tee 4
              i32.and
              br_if 0 (;@5;)
              local.get 3
              local.get 0
              i32.store
              local.get 0
              local.get 3
              i32.store offset=24
              local.get 0
              local.get 0
              i32.store offset=12
              local.get 0
              local.get 0
              i32.store offset=8
              i32.const 0
              i32.const 0
              i32.load offset=1051536
              local.get 4
              i32.or
              i32.store offset=1051536
              return
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 3
                  i32.load
                  local.tee 4
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 1
                  i32.ne
                  br_if 0 (;@7;)
                  local.get 4
                  local.set 2
                  br 1 (;@6;)
                end
                local.get 1
                i32.const 0
                i32.const 25
                local.get 2
                i32.const 1
                i32.shr_u
                i32.sub
                local.get 2
                i32.const 31
                i32.eq
                select
                i32.shl
                local.set 3
                loop  ;; label = @7
                  local.get 4
                  local.get 3
                  i32.const 29
                  i32.shr_u
                  i32.const 4
                  i32.and
                  i32.add
                  local.tee 5
                  i32.load offset=16
                  local.tee 2
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 3
                  i32.const 1
                  i32.shl
                  local.set 3
                  local.get 2
                  local.set 4
                  local.get 2
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  local.get 1
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              local.get 2
              i32.load offset=8
              local.tee 1
              local.get 0
              i32.store offset=12
              local.get 2
              local.get 0
              i32.store offset=8
              local.get 0
              i32.const 0
              i32.store offset=24
              local.get 0
              local.get 2
              i32.store offset=12
              local.get 0
              local.get 1
              i32.store offset=8
              return
            end
            local.get 5
            i32.const 16
            i32.add
            local.get 0
            i32.store
            local.get 0
            local.get 4
            i32.store offset=24
            local.get 0
            local.get 0
            i32.store offset=12
            local.get 0
            local.get 0
            i32.store offset=8
            return
          end
          block  ;; label = @4
            block  ;; label = @5
              i32.const 0
              i32.load offset=1051532
              local.tee 2
              i32.const 1
              local.get 1
              i32.const 3
              i32.shr_u
              i32.shl
              local.tee 3
              i32.and
              br_if 0 (;@5;)
              i32.const 0
              local.get 2
              local.get 3
              i32.or
              i32.store offset=1051532
              local.get 1
              i32.const 248
              i32.and
              i32.const 1051268
              i32.add
              local.tee 1
              local.set 2
              br 1 (;@4;)
            end
            local.get 1
            i32.const 248
            i32.and
            local.tee 2
            i32.const 1051268
            i32.add
            local.set 1
            local.get 2
            i32.const 1051276
            i32.add
            i32.load
            local.set 2
          end
          local.get 1
          local.get 0
          i32.store offset=8
          local.get 2
          local.get 0
          i32.store offset=12
          local.get 0
          local.get 1
          i32.store offset=12
          local.get 0
          local.get 2
          i32.store offset=8
          return
        end
        i32.const 0
        local.get 0
        i32.store offset=1051552
        i32.const 0
        i32.const 0
        i32.load offset=1051544
        local.get 1
        i32.add
        local.tee 1
        i32.store offset=1051544
        local.get 0
        local.get 1
        i32.const 1
        i32.or
        i32.store offset=4
        local.get 0
        i32.const 0
        i32.load offset=1051548
        i32.ne
        br_if 1 (;@1;)
        i32.const 0
        i32.const 0
        i32.store offset=1051540
        i32.const 0
        i32.const 0
        i32.store offset=1051548
        return
      end
      i32.const 0
      local.get 0
      i32.store offset=1051548
      i32.const 0
      i32.const 0
      i32.load offset=1051540
      local.get 1
      i32.add
      local.tee 1
      i32.store offset=1051540
      local.get 0
      local.get 1
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 0
      local.get 1
      i32.add
      local.get 1
      i32.store
      return
    end)
  (func $_ZN56_$LT$log..SetLoggerError$u20$as$u20$core..fmt..Debug$GT$3fmt17h006ae8a5c2e230aaE (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 1
    local.set 3
    block  ;; label = @1
      local.get 1
      i32.load
      local.tee 4
      i32.const 1050341
      i32.const 14
      local.get 1
      i32.load offset=4
      local.tee 5
      i32.load offset=12
      local.tee 6
      call_indirect (type 2)
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.load8_u offset=10
          i32.const 128
          i32.and
          br_if 0 (;@3;)
          i32.const 1
          local.set 3
          local.get 4
          i32.const 1049878
          i32.const 1
          local.get 6
          call_indirect (type 2)
          br_if 2 (;@1;)
          local.get 1
          i32.const 1050108
          i32.const 2
          call $_ZN4core3fmt9Formatter3pad17h5a5f539bbb272398E
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 4
        i32.const 1049879
        i32.const 2
        local.get 6
        call_indirect (type 2)
        br_if 1 (;@1;)
        i32.const 1
        local.set 3
        local.get 2
        i32.const 1
        i32.store8 offset=15
        local.get 2
        local.get 5
        i32.store offset=4
        local.get 2
        local.get 4
        i32.store
        local.get 2
        i32.const 1049848
        i32.store offset=20
        local.get 2
        local.get 1
        i64.load offset=8 align=4
        i64.store offset=24 align=4
        local.get 2
        local.get 2
        i32.const 15
        i32.add
        i32.store offset=8
        local.get 2
        local.get 2
        i32.store offset=16
        local.get 2
        i32.const 16
        i32.add
        i32.const 1050108
        i32.const 2
        call $_ZN4core3fmt9Formatter3pad17h5a5f539bbb272398E
        br_if 1 (;@1;)
        local.get 2
        i32.const 1049876
        i32.const 2
        call $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h915418dd4db6343bE
        br_if 1 (;@1;)
      end
      local.get 4
      i32.const 1049784
      i32.const 1
      local.get 6
      call_indirect (type 2)
      local.set 3
    end
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $_ZN55_$LT$metra..logger..MetraLogger$u20$as$u20$log..Log$GT$7enabled17h34bed2f0738c3f10E (type 0) (param i32 i32) (result i32)
    i32.const 1)
  (func $_ZN76_$LT$core..panic..panic_info..PanicMessage$u20$as$u20$core..fmt..Display$GT$3fmt17h70f570e4b5a2465bE (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.get 0
    i32.load
    local.tee 0
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.get 0
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 0
    i64.load align=4
    i64.store offset=8
    local.get 1
    i32.load offset=4
    local.set 0
    local.get 1
    i32.load
    local.set 1
    block  ;; label = @1
      local.get 2
      i32.load offset=12
      br_table 0 (;@1;) 0 (;@1;) 0 (;@1;)
    end
    local.get 1
    local.get 0
    local.get 2
    i32.const 8
    i32.add
    call $_ZN4core3fmt5write17h68542eb4423e8992E
    local.set 1
    local.get 2
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN5alloc3fmt6format17he043365795a64681E (type 1) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=12
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.load offset=4
                  br_table 0 (;@7;) 1 (;@6;) 2 (;@5;)
                end
                local.get 2
                br_if 1 (;@5;)
                i32.const 1
                local.set 3
                i32.const 0
                local.set 1
                i32.const 1
                local.set 2
                br 3 (;@3;)
              end
              local.get 2
              i32.eqz
              br_if 1 (;@4;)
            end
            local.get 0
            local.get 1
            call $_ZN5alloc3fmt6format12format_inner17hd51360b5065df943E
            return
          end
          local.get 1
          i32.load
          local.tee 2
          i32.load offset=4
          local.tee 1
          i32.const -1
          i32.le_s
          br_if 1 (;@2;)
          local.get 2
          i32.load
          local.set 3
          block  ;; label = @4
            local.get 1
            br_if 0 (;@4;)
            i32.const 1
            local.set 2
            i32.const 0
            local.set 1
            br 1 (;@3;)
          end
          i32.const 0
          i32.load8_u offset=1051120
          drop
          local.get 1
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$6malloc17hf076c5f6615165afE
          local.tee 2
          i32.eqz
          br_if 2 (;@1;)
        end
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 2
          local.get 3
          local.get 1
          memory.copy
        end
        local.get 0
        local.get 1
        i32.store offset=8
        local.get 0
        local.get 2
        i32.store offset=4
        local.get 0
        local.get 1
        i32.store
        return
      end
      i32.const 1050628
      call $_ZN5alloc7raw_vec17capacity_overflow17hfc61731a92216a2cE
      unreachable
    end
    local.get 1
    call $_ZN5alloc5alloc18handle_alloc_error17h538ce9133f14f3ccE
    unreachable)
  (func $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4bcd91e2fb22dc68E (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load offset=4
    local.set 3
    local.get 1
    i32.load
    local.set 4
    local.get 0
    i32.load
    local.set 1
    local.get 2
    i32.const 3
    i32.store offset=4
    local.get 2
    i32.const 1050492
    i32.store
    local.get 2
    i64.const 3
    i64.store offset=12 align=4
    local.get 2
    i32.const 9
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.get 1
    i64.extend_i32_u
    i64.or
    i64.store offset=24
    local.get 2
    i32.const 4
    i64.extend_i32_u
    i64.const 32
    i64.shl
    local.tee 5
    local.get 1
    i32.const 12
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=40
    local.get 2
    local.get 5
    local.get 1
    i32.const 8
    i32.add
    i64.extend_i32_u
    i64.or
    i64.store offset=32
    local.get 2
    local.get 2
    i32.const 24
    i32.add
    i32.store offset=8
    local.get 4
    local.get 3
    local.get 2
    call $_ZN4core3fmt5write17h68542eb4423e8992E
    local.set 1
    local.get 2
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17he1cfdf7a6bf820e2E (type 1) (param i32 i32)
    (local i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const -2147483648
          i32.or
          i32.const -2147483648
          i32.eq
          br_if 0 (;@3;)
          local.get 1
          i32.const -4
          i32.add
          i32.load
          local.tee 2
          i32.const -8
          i32.and
          local.tee 3
          i32.const 4
          i32.const 8
          local.get 2
          i32.const 3
          i32.and
          local.tee 2
          select
          local.get 0
          i32.add
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 2
            i32.eqz
            br_if 0 (;@4;)
            local.get 3
            local.get 0
            i32.const 39
            i32.add
            i32.gt_u
            br_if 3 (;@1;)
          end
          local.get 1
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h8ebfbf97344dd34dE
        end
        return
      end
      i32.const 1050740
      i32.const 46
      i32.const 1050788
      call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
      unreachable
    end
    i32.const 1050804
    i32.const 46
    i32.const 1050852
    call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
    unreachable)
  (func $engineUpdate (type 14) (result i32)
    (local i32)
    block  ;; label = @1
      i32.const 0
      i32.load offset=1051588
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      call $_ZN5metra3run28_$u7b$$u7b$closure$u7d$$u7d$17h457f67e11478465aE
      return
    end
    i32.const 1051044
    call $_ZN4core6option13unwrap_failed17h0450242c3e36021bE
    unreachable)
  (func $engineClean (type 8)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    block  ;; label = @1
      i32.const 0
      i32.load offset=1051576
      i32.const 3
      i32.le_u
      br_if 0 (;@1;)
      local.get 0
      i64.const 0
      i64.store offset=68 align=4
      local.get 0
      i64.const 17179869185
      i64.store offset=60 align=4
      local.get 0
      i32.const 1051076
      i32.store offset=56
      local.get 0
      i32.const 5
      i32.store offset=52
      local.get 0
      i32.const 4
      i32.store offset=44
      local.get 0
      i32.const 0
      i32.store offset=32
      local.get 0
      i32.const 0
      i32.store offset=20
      local.get 0
      i64.const 1125281431553
      i64.store offset=12 align=4
      local.get 0
      i32.const 1051020
      i64.extend_i32_u
      i64.const 68719476736
      i64.or
      i64.store offset=36 align=4
      local.get 0
      i32.const 1051036
      i32.store offset=48
      local.get 0
      i32.const 1051036
      i64.extend_i32_u
      i64.const 21474836480
      i64.or
      i64.store offset=24 align=4
      i32.const 0
      i32.load offset=1051100
      i32.const 1050108
      i32.const 0
      i32.load offset=1051116
      i32.const 2
      i32.eq
      local.tee 1
      select
      local.get 0
      i32.const 12
      i32.add
      i32.const 0
      i32.load offset=1051104
      i32.const 1050084
      local.get 1
      select
      i32.load offset=16
      call_indirect (type 1)
    end
    i32.const 0
    i32.load offset=1051588
    local.set 1
    i32.const 0
    i32.const 0
    i32.store offset=1051588
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 1
            i32.load8_u offset=9
            i32.const 3
            i32.eq
            br_if 0 (;@4;)
            i32.const 0
            i32.load offset=1051576
            i32.const 4
            i32.lt_u
            br_if 0 (;@4;)
            local.get 0
            i64.const 0
            i64.store offset=68 align=4
            local.get 0
            i64.const 17179869185
            i64.store offset=60 align=4
            local.get 0
            i32.const 1049072
            i32.store offset=56
            local.get 0
            i32.const 3
            i32.store offset=52
            local.get 0
            i32.const 4
            i32.store offset=44
            local.get 0
            i32.const 0
            i32.store offset=32
            local.get 0
            i32.const 0
            i32.store offset=20
            local.get 0
            i64.const 201863462913
            i64.store offset=12 align=4
            local.get 0
            i32.const 1049080
            i64.extend_i32_u
            i64.const 47244640256
            i64.or
            i64.store offset=36 align=4
            local.get 0
            i32.const 1049091
            i32.store offset=48
            local.get 0
            i32.const 1049091
            i64.extend_i32_u
            i64.const 12884901888
            i64.or
            i64.store offset=24 align=4
            i32.const 0
            i32.load offset=1051100
            i32.const 1050108
            i32.const 0
            i32.load offset=1051116
            i32.const 2
            i32.eq
            local.tee 2
            select
            local.get 0
            i32.const 12
            i32.add
            i32.const 0
            i32.load offset=1051104
            i32.const 1050084
            local.get 2
            select
            i32.load offset=16
            call_indirect (type 1)
          end
          local.get 1
          i32.const -4
          i32.add
          i32.load
          local.tee 2
          i32.const -8
          i32.and
          i32.const 28
          i32.const 32
          local.get 2
          i32.const 3
          i32.and
          local.tee 3
          select
          i32.lt_u
          br_if 1 (;@2;)
          block  ;; label = @4
            local.get 3
            i32.eqz
            br_if 0 (;@4;)
            local.get 2
            i32.const 64
            i32.ge_u
            br_if 3 (;@1;)
          end
          local.get 1
          call $_ZN8dlmalloc8dlmalloc17Dlmalloc$LT$A$GT$4free17h8ebfbf97344dd34dE
          local.get 0
          i32.const 80
          i32.add
          global.set $__stack_pointer
          return
        end
        i32.const 1051084
        call $_ZN4core6option13unwrap_failed17h0450242c3e36021bE
        unreachable
      end
      i32.const 1050740
      i32.const 46
      i32.const 1050788
      call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
      unreachable
    end
    i32.const 1050804
    i32.const 46
    i32.const 1050852
    call $_ZN4core9panicking5panic17hcb4f0bfb9f36a348E
    unreachable)
  (table (;0;) 29 29 funcref)
  (memory (;0;) 17)
  (global $__stack_pointer (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1051108))
  (global (;2;) i32 (i32.const 1051112))
  (global (;3;) i32 (i32.const 1051580))
  (global (;4;) i32 (i32.const 1051592))
  (global (;5;) i32 (i32.const 1051600))
  (export "memory" (memory 0))
  (export "engineMain" (func $engineMain))
  (export "engineUpdate" (func $engineUpdate))
  (export "engineClean" (func $engineClean))
  (export "exposedMousePosX" (global 1))
  (export "exposedMousePosY" (global 2))
  (export "exposedMouseStatus" (global 3))
  (export "__data_end" (global 4))
  (export "__heap_base" (global 5))
  (elem (;0;) (i32.const 1) func $_ZN3jam6update17hb2c94220c96c0545E $_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hb7cc4525d713b4b9E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h44818328333068deE $_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h10d43ed3b5ffe62fE $_ZN76_$LT$core..panic..panic_info..PanicMessage$u20$as$u20$core..fmt..Display$GT$3fmt17h70f570e4b5a2465bE $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h4bcd91e2fb22dc68E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h599cbe640025bd16E $_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h5caab1d2e7c2bad5E $_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbd4b9d8977f1a047E $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h7e85e460ea7b6beeE $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h7850057311a0cef1E $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h61f319b0423b9825E $_ZN4core3fmt5Write9write_fmt17h2c5113f660bc4b2fE $_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7b15f6ce7cdec3bcE $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$9write_str17h915418dd4db6343bE $_ZN68_$LT$core..fmt..builders..PadAdapter$u20$as$u20$core..fmt..Write$GT$10write_char17h201a3da0f3901d61E $_ZN4core3fmt5Write9write_fmt17h5fc1c2cab027a787E $_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$7enabled17ha09e9db710a2210aE $_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$3log17h125098c1327886c1E $_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$5flush17hc2d27a3732ee412fE $_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h3a8e9555fe7a58aaE $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17h7850057311a0cef1E.106 $_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h61f319b0423b9825E.107 $_ZN4core3fmt5Write9write_fmt17hbee122a876abeac2E $_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7b15f6ce7cdec3bcE.105 $_ZN55_$LT$metra..logger..MetraLogger$u20$as$u20$log..Log$GT$7enabled17h34bed2f0738c3f10E $_ZN55_$LT$metra..logger..MetraLogger$u20$as$u20$log..Log$GT$3log17ha8ad039e157b7254E $_ZN56_$LT$log..SetLoggerError$u20$as$u20$core..fmt..Debug$GT$3fmt17h006ae8a5c2e230aaE)
  (data $.rodata (i32.const 1048576) "run is not allowed to be called multiple times\00\00\00\00\10\00.\00\00\00/home/addie/Projects/gmtk-2025/metra/src/lib.rs\008\00\10\00/\00\00\00\0d\01\00\00\04\00\00\00update called after game state was dropped\00\00x\00\10\00*\00\00\00dropping game state\00\ac\00\10\00\13\00\00\00game state dropped, all assets/resources should be freed.\00\00\00\c8\00\10\009\00\00\00performing final internal update\0c\01\10\00 \00\00\00\00\00\0ca\0c\00\0cb\18\00\0cc$\00\0cd0\00\0ce<\00\09fE\00\0cgQ\00\0ch]\00\05ib\00\07ji\00\0cku\00\06l{\00\12m\8d\00\0cn\99\00\0co\a5\00\0cp\b1\00\0cq\bd\00\09r\c6\00\0bs\d1\00\09t\da\00\0cu\e6\00\0ev\f4\00\13w\07\01\0dx\14\01\0ey\22\01\0bz-\01\05!2\01\0d0?\01\0d1L\01\0d2Y\01\0d3f\01\0d4s\01\0d5\80\01\0d6\8d\01\0d7\9a\01\0d8\a7\01\0d9\b4\01\0e#\c2\01\0e*\d0\01\04.\d4\01\04,\d8\01\15\00game state dropped\00\00\dc\01\10\00\12\00\00\00src/main.rsjamhello from init!\00\00\06\02\10\00\10\00\00\00breaking!\0aout of the loop\00\00\00\0a\00\00\00\0c\00\00\00\04\00\00\00\0b\00\00\00\0c\00\00\00\0d\00\00\00capacity overflow\00\00\00T\02\10\00\11\00\00\00library/alloc/src/raw_vec/mod.rsp\02\10\00 \00\00\00.\02\00\00\11\00\00\00library/alloc/src/alloc.rsmemory allocation of  bytes failed\ba\02\10\00\15\00\00\00\cf\02\10\00\0d\00\00\00\a0\02\10\00\1a\00\00\00\b5\01\00\00\0d\00\00\00library/alloc/src/string.rs\00\fc\02\10\00\1b\00\00\00\e8\01\00\00\17\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0e\00\00\00a formatting trait implementation returned an error when the underlying stream did notlibrary/alloc/src/fmt.rs\00\00\8e\03\10\00\18\00\00\00\8a\02\00\00\0e\00\00\00\02\02\02\02\02\02\02\02\02\03\03\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\02\02\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00)called `Option::unwrap()` on a `None` value: \00\00\01\00\00\00\00\00\00\00\e4\04\10\00\02\00\00\00\00\00\00\00\0c\00\00\00\04\00\00\00\0f\00\00\00\10\00\00\00\11\00\00\00    ,\0a((\0a00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00()\00\00\15\00\00\00\0c\00\00\00\04\00\00\00\16\00\00\00\17\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\19\00\00\00a Display implementation returned an error unexpectedly/home/addie/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/string.rs\00\00_\06\10\00o\00\00\00\f0\0a\00\00\0e\00\00\00ErrorSetLoggerError/home/addie/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/raw_vec/mod.rs\00\f3\06\10\00t\00\00\00.\02\00\00\11\00\00\00:\00\00\00\01\00\00\00\00\00\00\00x\07\10\00\01\00\00\00x\07\10\00\01\00\00\00/home/addie/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/slice.rs\00\00\94\07\10\00n\00\00\00\be\01\00\00\1d\00\00\00/home/addie/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/dlmalloc-0.2.10/src/dlmalloc.rsassertion failed: psize >= size + min_overhead\00\00\14\08\10\00`\00\00\00\b1\04\00\00\09\00\00\00assertion failed: psize <= size + max_overhead\00\00\14\08\10\00`\00\00\00\b7\04\00\00\0d\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00\1b\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00called `Result::unwrap()` on an `Err` valuemetra/src/logger.rs\00\00g\09\10\00\13\00\00\000\00\00\00\1e\00\00\00metra/src/lib.rsmetra\00\00\00\8c\09\10\00\10\00\00\00\00\01\00\00%\00\00\00dropping closure\b4\09\10\00\10\00\00\00\8c\09\10\00\10\00\00\00\07\01\00\00#\00\00\00")
  (data $.data (i32.const 1051100) "\01\00\00\00\e4\05\10\00x\00\00\00Z\00\00\00"))
